#
# Geonames Local
#
require 'optparse'
# Require CLI Stuff
require 'geonames_local/geonames'
require 'geonames_local/data/shp'
require 'geonames_local/data/dump'
require 'geonames_local/data/export'
require 'geonames_local/cli'


module Geonames
  class CLI
    def self.parse_options(argv)
      options = {}

      argv.options do |opts|
        opts.banner = <<BANNER
Geonames Command Line Usage:

geonames <country code(s)> <opts>

geonames
BANNER
        opts.on("-l", "--level LEVEL", String, "The level of logging to report" ) { |level| options[:level] = level }
        opts.on("-d", "--dump", "Dump DB before all" ) { options[:dump] = true }
        opts.separator ""
        opts.separator "Config file:"
        opts.on("-c", "--config CONFIG", String, "Geonames Config file path" ) { |file|  options[:config] = file }
        opts.on("-i", "--import CONFIG", String, "Geonames Import SHP/DBF/GPX" ) { |file|  options[:shp] = file }
        opts.separator ""
        opts.separator "SHP Options:"
        opts.on("--map TYPE", Array, "Use zone/road to import" ) { |s| options[:map] = s.map(&:to_sym) }
        opts.on("--type TYPE", String, "Use zone/road to import" ) { |s| options[:type] = s }
        opts.on("--city CITY", String, "Use city gid to import" ) { |s| options[:city] = s }
        opts.on("--country COUNTRY", String, "Use country gid to import" ) { |s| options[:country] = s }
        opts.separator ""
        opts.separator "Common Options:"
        opts.on("-h", "--help", "Show this message" ) { puts opts; exit }
        opts.on("-v", "--verbose", "Turn on logging to STDOUT" ) { |bool| options[:verbose] = bool }
        opts.on("-V", "--version", "Show version") {  puts Geonames::VERSION;  exit }
        opts.separator ""
        begin
          opts.parse!
          if argv.empty? && !options[:config]
            puts opts
            exit
          end
        rescue
          puts opts
          exit
        end
      end
      options
    end
    private_class_method :parse_options

    class << self

    # Ugly but works?
    def work(argv)
      trap(:INT) { stop! }
      trap(:TERM) { stop! }
      Opt.merge! parse_options(argv)

      if Opt[:config]
        Opt.merge! YAML.load(File.read(Opt[:config]))
      end

      # Load config/geonames.yml if there's one
      if File.exists?(cfg = File.join("config", "geonames.yml"))
        Opt.merge! YAML.load(File.read(cfg))
      end

      if shp = Opt[:shp]
        SHP.import(shp)
        exit
      end

      #
      # Return Codes and Exit
      #
      if argv[0] =~ /list|codes/
         Codes.each do |key,val|
          str = [val.values, key.to_s].join(" ").downcase
          if s = argv[1]
            next unless str =~ /#{s.downcase}/
          end
          puts "#{val[:en_us]}: #{key}"
        end
        exit
      end

      #
      # If arguments scaffold, config, write down yml.
      #
      if argv[0] =~ /scaff|conf/
        fname = (argv[1] || "geonames") + ".yml"
        if File.exist?(fname)
          puts "File exists."
        else
          puts "Writing to #{fname}"
          `cp #{File.join(File.dirname(__FILE__), 'config', 'geonames.yml')} #{fname}`
        end
        exit
      end

      #
      # Require georuby optionally
      #
      require "geo_ruby" if Opt[:mapping] && Opt[:mapping][:geom]

      #
      # Export Data as CSV or JSON
      #
      if argv[0] =~ /csv|json/
        Geonames::Export.new(Country.all).to_csv

      #
      # Do the magic! Import Geonames Data
      #
      else
        load_adapter(Opt[:store])
        info "Using adapter #{Opt[:store]}.."

        if argv[0] =~ /coun|nati/
          dump = Geonames::Dump.new(:country, :dump)
          info "\n---\nTotal #{dump.data.length} parsed."

          info "Writing to DB"
          Geonames::Models::Country.from_batch(dump.data)
        else
          zip = Geonames::Dump.new(Opt[:codes], :zip).data
          dump = Geonames::Dump.new(Opt[:codes], :dump).data
          info "\n---\nTotal #{dump.size} parsed. #{zip.size} zips."

          info "Join dump << zip"
          dump = unify!(dump, zip).group_by(&:kind)

          info "Writing provinces..."
          Geonames::Models::Province.from_batch dump[:province]
          info "Writing cities..."
          Geonames::Models::City.from_batch dump[:city]
        end
      end
    end

    def load_adapter(name)
      begin
        require "geonames_local/models/#{name}"
      rescue LoadError
        puts "Can't find adapter for #{name}"
        stop!
      end
    end

    def unify! dump, zip
      start = Time.now
      dump.map! do |spot|
        if other = zip.find { |d| d.code == spot.code }
          spot.zip = other.zip
          spot
        else
          spot
        end
      end
      info "Done. #{(Time.now-start).to_i}s"
      dump
    end

    def stop!
      puts "Closing Geonames..."
      exit
    end
    end

  end

end
