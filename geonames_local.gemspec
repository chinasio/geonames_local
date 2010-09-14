# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{geonames_local}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcos Piccinini"]
  s.date = %q{2010-09-14}
  s.default_executable = %q{geonames}
  s.description = %q{Dump and feed a tokyo cabinet for local geonames search}
  s.email = %q{x@nofxx.com}
  s.executables = ["geonames"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/geonames",
     "geonames.yml",
     "geonames_local.gemspec",
     "lib/geonames_ar.rb",
     "lib/geonames_cli.rb",
     "lib/geonames_local.rb",
     "lib/geonames_local/adapters/mongodb.rb",
     "lib/geonames_local/adapters/postgres.rb",
     "lib/geonames_local/adapters/tokyo.rb",
     "lib/geonames_local/cli.rb",
     "lib/geonames_local/config/codes.yml",
     "lib/geonames_local/config/geonames.sql",
     "lib/geonames_local/config/geonames.yml",
     "lib/geonames_local/data/dump.rb",
     "lib/geonames_local/data/export.rb",
     "lib/geonames_local/data/shp.rb",
     "lib/geonames_local/features/road.rb",
     "lib/geonames_local/features/spot.rb",
     "lib/geonames_local/features/zone.rb",
     "lib/geonames_local/geonames.rb",
     "lib/geonames_local/model/city.rb",
     "lib/geonames_local/model/country.rb",
     "lib/geonames_local/model/province.rb",
     "lib/geonames_local/mongo/city.rb",
     "lib/geonames_local/mongo/country.rb",
     "lib/geonames_local/mongo/province.rb",
     "spec/geonames_local/adapters/mongodb_spec.rb",
     "spec/geonames_local/adapters/postgres_spec.rb",
     "spec/geonames_local/adapters/tokyo_spec.rb",
     "spec/geonames_local/cli_spec.rb",
     "spec/geonames_local/data/cache_spec.rb",
     "spec/geonames_local/data/shp_spec.rb",
     "spec/geonames_local/features/road_spec.rb",
     "spec/geonames_local/features/spot_spec.rb",
     "spec/geonames_local/features/zone_spec.rb",
     "spec/geonames_local/model/ar_spec.rb",
     "spec/geonames_local/mongo/city_spec.rb",
     "spec/geonames_local_spec.rb",
     "spec/spec.opts",
     "spec/spec_ar_helper.rb",
     "spec/spec_helper.rb",
     "spec/spec_mongo_helper.rb",
     "task/benchmark.rb",
     "task/benchmark_cabinet.rb"
  ]
  s.homepage = %q{http://github.com/nofxx/geonames_local}
  s.post_install_message = %q{
Geonames Local
--------------

To use the adapter, install the corresponding gem:

  PostgreSQL   =>   pg
  MongoDB      =>   mongodb (optional: mongo_ext)
  Tokyo        =>   tokyocabinet

PostgreSQL
----------

Be sure to use a database based on the PostGIS template.

MongoDB
-------

MongoDB 2D support is new, only mongo >= 1.3.3 mongodb gem >= 0.19.2
http://github.com/mongodb/mongo-ruby-driver

Have fun because:
}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Dump and feed a tokyo local geonames db}
  s.test_files = [
    "spec/spec_ar_helper.rb",
     "spec/spec_helper.rb",
     "spec/geonames_local/data/shp_spec.rb",
     "spec/geonames_local/data/cache_spec.rb",
     "spec/geonames_local/model/ar_spec.rb",
     "spec/geonames_local/mongo/city_spec.rb",
     "spec/geonames_local/cli_spec.rb",
     "spec/geonames_local/adapters/postgres_spec.rb",
     "spec/geonames_local/adapters/tokyo_spec.rb",
     "spec/geonames_local/adapters/mongodb_spec.rb",
     "spec/geonames_local/features/spot_spec.rb",
     "spec/geonames_local/features/zone_spec.rb",
     "spec/geonames_local/features/road_spec.rb",
     "spec/spec_mongo_helper.rb",
     "spec/geonames_local_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nofxx-georuby>, [">= 1.7.1"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<nofxx-georuby>, [">= 1.7.1"])
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<nofxx-georuby>, [">= 1.7.1"])
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

