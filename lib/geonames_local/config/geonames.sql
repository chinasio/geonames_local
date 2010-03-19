PGDMP     (                    n            geoname    8.4.1    8.4.2 &   "
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            #
           0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                       false            $
           1262    21564    geoname    DATABASE     i   CREATE DATABASE geoname WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'UTF-8';
    DROP DATABASE geoname;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            %
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            &
           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    3                       2612    16387    plpgsql    PROCEDURAL LANGUAGE     $   CREATE PROCEDURAL LANGUAGE plpgsql;
 "   DROP PROCEDURAL LANGUAGE plpgsql;
             postgres    false            �           0    0    box2d 
   SHELL TYPE        CREATE TYPE box2d;
            public       postgres    false            T            1255    16463    st_box2d_in(cstring)    FUNCTION     �   CREATE FUNCTION st_box2d_in(cstring) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_in';
 +   DROP FUNCTION public.st_box2d_in(cstring);
       public       postgres    false    3    1006            V            1255    16465    st_box2d_out(box2d)    FUNCTION     �   CREATE FUNCTION st_box2d_out(box2d) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_out';
 *   DROP FUNCTION public.st_box2d_out(box2d);
       public       postgres    false    3    1006            �           1247    16441    box2d    TYPE     �   CREATE TYPE box2d (
    INTERNALLENGTH = 16,
    INPUT = st_box2d_in,
    OUTPUT = st_box2d_out,
    ALIGNMENT = int4,
    STORAGE = plain
);
     DROP TYPE public.box2d CASCADE;
       public       postgres    false    84    86    3            �           0    0    box3d 
   SHELL TYPE        CREATE TYPE box3d;
            public       postgres    false            <            1255    16433    st_box3d_in(cstring)    FUNCTION     }   CREATE FUNCTION st_box3d_in(cstring) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_in';
 +   DROP FUNCTION public.st_box3d_in(cstring);
       public       postgres    false    3    997            =            1255    16434    st_box3d_out(box3d)    FUNCTION        CREATE FUNCTION st_box3d_out(box3d) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_out';
 *   DROP FUNCTION public.st_box3d_out(box3d);
       public       postgres    false    3    997            �           1247    16430    box3d    TYPE     �   CREATE TYPE box3d (
    INTERNALLENGTH = 48,
    INPUT = st_box3d_in,
    OUTPUT = st_box3d_out,
    ALIGNMENT = double,
    STORAGE = plain
);
     DROP TYPE public.box3d CASCADE;
       public       postgres    false    60    61    3            �           0    0    box3d_extent 
   SHELL TYPE        CREATE TYPE box3d_extent;
            public       postgres    false            >            1255    16437    box3d_extent_in(cstring)    FUNCTION     �   CREATE FUNCTION box3d_extent_in(cstring) RETURNS box3d_extent
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_in';
 /   DROP FUNCTION public.box3d_extent_in(cstring);
       public       postgres    false    3    1000            ?            1255    16438    box3d_extent_out(box3d_extent)    FUNCTION     �   CREATE FUNCTION box3d_extent_out(box3d_extent) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_extent_out';
 5   DROP FUNCTION public.box3d_extent_out(box3d_extent);
       public       postgres    false    3    1000            �           1247    16436    box3d_extent    TYPE     �   CREATE TYPE box3d_extent (
    INTERNALLENGTH = 48,
    INPUT = box3d_extent_in,
    OUTPUT = box3d_extent_out,
    ALIGNMENT = double,
    STORAGE = plain
);
 '   DROP TYPE public.box3d_extent CASCADE;
       public       postgres    false    3    62    63            �           0    0    chip 
   SHELL TYPE        CREATE TYPE chip;
            public       postgres    false            P            1255    16458    st_chip_in(cstring)    FUNCTION     z   CREATE FUNCTION st_chip_in(cstring) RETURNS chip
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_in';
 *   DROP FUNCTION public.st_chip_in(cstring);
       public       postgres    false    3    1003            R            1255    16460    st_chip_out(chip)    FUNCTION     |   CREATE FUNCTION st_chip_out(chip) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_out';
 (   DROP FUNCTION public.st_chip_out(chip);
       public       postgres    false    3    1003            �           1247    16456    chip    TYPE     �   CREATE TYPE chip (
    INTERNALLENGTH = variable,
    INPUT = st_chip_in,
    OUTPUT = st_chip_out,
    ALIGNMENT = double,
    STORAGE = extended
);
    DROP TYPE public.chip CASCADE;
       public       postgres    false    80    3    82            �           0    0    geometry 
   SHELL TYPE        CREATE TYPE geometry;
            public       postgres    false                        1255    16400    st_geometry_analyze(internal)    FUNCTION     �   CREATE FUNCTION st_geometry_analyze(internal) RETURNS boolean
    LANGUAGE c STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_analyze';
 4   DROP FUNCTION public.st_geometry_analyze(internal);
       public       postgres    false    3                        1255    16396    st_geometry_in(cstring)    FUNCTION     �   CREATE FUNCTION st_geometry_in(cstring) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_in';
 .   DROP FUNCTION public.st_geometry_in(cstring);
       public       postgres    false    3    994                        1255    16398    st_geometry_out(geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_out(geometry) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_out';
 0   DROP FUNCTION public.st_geometry_out(geometry);
       public       postgres    false    3    994                        1255    16402    st_geometry_recv(internal)    FUNCTION     �   CREATE FUNCTION st_geometry_recv(internal) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_recv';
 1   DROP FUNCTION public.st_geometry_recv(internal);
       public       postgres    false    3    994            !            1255    16404    st_geometry_send(geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_send(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_send';
 1   DROP FUNCTION public.st_geometry_send(geometry);
       public       postgres    false    3    994            �           1247    16394    geometry    TYPE       CREATE TYPE geometry (
    INTERNALLENGTH = variable,
    INPUT = st_geometry_in,
    OUTPUT = st_geometry_out,
    RECEIVE = st_geometry_recv,
    SEND = st_geometry_send,
    ANALYZE = st_geometry_analyze,
    DELIMITER = ':',
    ALIGNMENT = int4,
    STORAGE = main
);
 #   DROP TYPE public.geometry CASCADE;
       public       postgres    false    27    31    33    29    3    25            �           1247    16731    geometry_dump    TYPE     B   CREATE TYPE geometry_dump AS (
	path integer[],
	geom geometry
);
     DROP TYPE public.geometry_dump;
       public       postgres    false    3    2258            �           0    0    pgis_abs 
   SHELL TYPE        CREATE TYPE pgis_abs;
            public       postgres    false            �           1255    16905    pgis_abs_in(cstring)    FUNCTION     �   CREATE FUNCTION pgis_abs_in(cstring) RETURNS pgis_abs
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'pgis_abs_in';
 +   DROP FUNCTION public.pgis_abs_in(cstring);
       public       postgres    false    3    1017            �           1255    16906    pgis_abs_out(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_abs_out(pgis_abs) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'pgis_abs_out';
 -   DROP FUNCTION public.pgis_abs_out(pgis_abs);
       public       postgres    false    3    1017            �           1247    16904    pgis_abs    TYPE     �   CREATE TYPE pgis_abs (
    INTERNALLENGTH = 8,
    INPUT = pgis_abs_in,
    OUTPUT = pgis_abs_out,
    ALIGNMENT = double,
    STORAGE = plain
);
 #   DROP TYPE public.pgis_abs CASCADE;
       public       postgres    false    3    435    434            �           0    0    spheroid 
   SHELL TYPE        CREATE TYPE spheroid;
            public       postgres    false                        1255    16390    st_spheroid_in(cstring)    FUNCTION     �   CREATE FUNCTION st_spheroid_in(cstring) RETURNS spheroid
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'ellipsoid_in';
 .   DROP FUNCTION public.st_spheroid_in(cstring);
       public       postgres    false    3    991                        1255    16392    st_spheroid_out(spheroid)    FUNCTION     �   CREATE FUNCTION st_spheroid_out(spheroid) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'ellipsoid_out';
 0   DROP FUNCTION public.st_spheroid_out(spheroid);
       public       postgres    false    3    991            �           1247    16388    spheroid    TYPE     �   CREATE TYPE spheroid (
    INTERNALLENGTH = 65,
    INPUT = st_spheroid_in,
    OUTPUT = st_spheroid_out,
    ALIGNMENT = double,
    STORAGE = plain
);
 #   DROP TYPE public.spheroid CASCADE;
       public       postgres    false    21    23    3                       1255    16996 2   _st_asgeojson(integer, geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION _st_asgeojson(integer, geometry, integer, integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asGeoJson';
 I   DROP FUNCTION public._st_asgeojson(integer, geometry, integer, integer);
       public       postgres    false    3    993            �           1255    16979 .   _st_asgml(integer, geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION _st_asgml(integer, geometry, integer, integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asGML';
 E   DROP FUNCTION public._st_asgml(integer, geometry, integer, integer);
       public       postgres    false    3    993            �           1255    16988 %   _st_askml(integer, geometry, integer)    FUNCTION     �   CREATE FUNCTION _st_askml(integer, geometry, integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asKML';
 <   DROP FUNCTION public._st_askml(integer, geometry, integer);
       public       postgres    false    3    993            �           1255    16949     _st_contains(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_contains(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'contains';
 7   DROP FUNCTION public._st_contains(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16955 (   _st_containsproperly(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_containsproperly(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'containsproperly';
 ?   DROP FUNCTION public._st_containsproperly(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16951 !   _st_coveredby(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_coveredby(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'coveredby';
 8   DROP FUNCTION public._st_coveredby(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16953    _st_covers(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_covers(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'covers';
 5   DROP FUNCTION public._st_covers(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16943    _st_crosses(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_crosses(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'crosses';
 6   DROP FUNCTION public._st_crosses(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16937 1   _st_dwithin(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION _st_dwithin(geometry, geometry, double precision) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_dwithin';
 H   DROP FUNCTION public._st_dwithin(geometry, geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16940 "   _st_intersects(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_intersects(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'intersects';
 9   DROP FUNCTION public._st_intersects(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16876 -   _st_linecrossingdirection(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_linecrossingdirection(geometry, geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'ST_LineCrossingDirection';
 D   DROP FUNCTION public._st_linecrossingdirection(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16958     _st_overlaps(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_overlaps(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'overlaps';
 7   DROP FUNCTION public._st_overlaps(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16935    _st_touches(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_touches(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'touches';
 6   DROP FUNCTION public._st_touches(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16946    _st_within(geometry, geometry)    FUNCTION     �   CREATE FUNCTION _st_within(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'within';
 5   DROP FUNCTION public._st_within(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    17164    addauth(text)    FUNCTION     :  CREATE FUNCTION addauth(text) RETURNS boolean
    LANGUAGE plpgsql
    AS $_$ 
DECLARE
	lockid alias for $1;
	okay boolean;
	myrec record;
BEGIN
	-- check to see if table exists
	--  if not, CREATE TEMP TABLE mylock (transid xid, lockcode text)
	okay := 'f';
	FOR myrec IN SELECT * FROM pg_class WHERE relname = 'temp_lock_have_table' LOOP
		okay := 't';
	END LOOP; 
	IF (okay <> 't') THEN 
		CREATE TEMP TABLE temp_lock_have_table (transid xid, lockcode text);
			-- this will only work from pgsql7.4 up
			-- ON COMMIT DELETE ROWS;
	END IF;

	--  INSERT INTO mylock VALUES ( $1)
--	EXECUTE 'INSERT INTO temp_lock_have_table VALUES ( '||
--		quote_literal(getTransactionID()) || ',' ||
--		quote_literal(lockid) ||')';

	INSERT INTO temp_lock_have_table VALUES (getTransactionID(), lockid);

	RETURN true::boolean;
END;
$_$;
 $   DROP FUNCTION public.addauth(text);
       public       postgres    false    3    1031            �            1255    16578    addbbox(geometry)    FUNCTION     �   CREATE FUNCTION addbbox(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_addBBOX';
 (   DROP FUNCTION public.addbbox(geometry);
       public       postgres    false    3    993    993            G           1255    16776 �   addgeometrycolumn(character varying, character varying, character varying, character varying, integer, character varying, integer)    FUNCTION     <  CREATE FUNCTION addgeometrycolumn(character varying, character varying, character varying, character varying, integer, character varying, integer) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	catalog_name alias for $1;
	schema_name alias for $2;
	table_name alias for $3;
	column_name alias for $4;
	new_srid alias for $5;
	new_type alias for $6;
	new_dim alias for $7;
	rec RECORD;
	sr varchar;
	real_schema name;
	sql text;

BEGIN

	-- Verify geometry type
	IF ( NOT ( (new_type = 'GEOMETRY') OR
			   (new_type = 'GEOMETRYCOLLECTION') OR
			   (new_type = 'POINT') OR
			   (new_type = 'MULTIPOINT') OR
			   (new_type = 'POLYGON') OR
			   (new_type = 'MULTIPOLYGON') OR
			   (new_type = 'LINESTRING') OR
			   (new_type = 'MULTILINESTRING') OR
			   (new_type = 'GEOMETRYCOLLECTIONM') OR
			   (new_type = 'POINTM') OR
			   (new_type = 'MULTIPOINTM') OR
			   (new_type = 'POLYGONM') OR
			   (new_type = 'MULTIPOLYGONM') OR
			   (new_type = 'LINESTRINGM') OR
			   (new_type = 'MULTILINESTRINGM') OR
			   (new_type = 'CIRCULARSTRING') OR
			   (new_type = 'CIRCULARSTRINGM') OR
			   (new_type = 'COMPOUNDCURVE') OR
			   (new_type = 'COMPOUNDCURVEM') OR
			   (new_type = 'CURVEPOLYGON') OR
			   (new_type = 'CURVEPOLYGONM') OR
			   (new_type = 'MULTICURVE') OR
			   (new_type = 'MULTICURVEM') OR
			   (new_type = 'MULTISURFACE') OR
			   (new_type = 'MULTISURFACEM')) )
	THEN
		RAISE EXCEPTION 'Invalid type name - valid ones are:
	POINT, MULTIPOINT,
	LINESTRING, MULTILINESTRING,
	POLYGON, MULTIPOLYGON,
	CIRCULARSTRING, COMPOUNDCURVE, MULTICURVE,
	CURVEPOLYGON, MULTISURFACE,
	GEOMETRY, GEOMETRYCOLLECTION,
	POINTM, MULTIPOINTM,
	LINESTRINGM, MULTILINESTRINGM,
	POLYGONM, MULTIPOLYGONM,
	CIRCULARSTRINGM, COMPOUNDCURVEM, MULTICURVEM
	CURVEPOLYGONM, MULTISURFACEM,
	or GEOMETRYCOLLECTIONM';
		RETURN 'fail';
	END IF;


	-- Verify dimension
	IF ( (new_dim >4) OR (new_dim <0) ) THEN
		RAISE EXCEPTION 'invalid dimension';
		RETURN 'fail';
	END IF;

	IF ( (new_type LIKE '%M') AND (new_dim!=3) ) THEN
		RAISE EXCEPTION 'TypeM needs 3 dimensions';
		RETURN 'fail';
	END IF;


	-- Verify SRID
	IF ( new_srid != -1 ) THEN
		SELECT SRID INTO sr FROM spatial_ref_sys WHERE SRID = new_srid;
		IF NOT FOUND THEN
			RAISE EXCEPTION 'AddGeometryColumns() - invalid SRID';
			RETURN 'fail';
		END IF;
	END IF;


	-- Verify schema
	IF ( schema_name IS NOT NULL AND schema_name != '' ) THEN
		sql := 'SELECT nspname FROM pg_namespace ' ||
			'WHERE text(nspname) = ' || quote_literal(schema_name) ||
			'LIMIT 1';
		RAISE DEBUG '%', sql;
		EXECUTE sql INTO real_schema;

		IF ( real_schema IS NULL ) THEN
			RAISE EXCEPTION 'Schema % is not a valid schemaname', quote_literal(schema_name);
			RETURN 'fail';
		END IF;
	END IF;

	IF ( real_schema IS NULL ) THEN
		RAISE DEBUG 'Detecting schema';
		sql := 'SELECT n.nspname AS schemaname ' ||
			'FROM pg_catalog.pg_class c ' ||
			  'JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace ' ||
			'WHERE c.relkind = ' || quote_literal('r') ||
			' AND n.nspname NOT IN (' || quote_literal('pg_catalog') || ', ' || quote_literal('pg_toast') || ')' ||
			' AND pg_catalog.pg_table_is_visible(c.oid)' ||
			' AND c.relname = ' || quote_literal(table_name);
		RAISE DEBUG '%', sql;
		EXECUTE sql INTO real_schema;

		IF ( real_schema IS NULL ) THEN
			RAISE EXCEPTION 'Table % does not occur in the search_path', quote_literal(table_name);
			RETURN 'fail';
		END IF;
	END IF;
	

	-- Add geometry column to table
	sql := 'ALTER TABLE ' ||
		quote_ident(real_schema) || '.' || quote_ident(table_name)
		|| ' ADD COLUMN ' || quote_ident(column_name) ||
		' geometry ';
	RAISE DEBUG '%', sql;
	EXECUTE sql;


	-- Delete stale record in geometry_columns (if any)
	sql := 'DELETE FROM geometry_columns WHERE
		f_table_catalog = ' || quote_literal('') ||
		' AND f_table_schema = ' ||
		quote_literal(real_schema) ||
		' AND f_table_name = ' || quote_literal(table_name) ||
		' AND f_geometry_column = ' || quote_literal(column_name);
	RAISE DEBUG '%', sql;
	EXECUTE sql;


	-- Add record in geometry_columns
	sql := 'INSERT INTO geometry_columns (f_table_catalog,f_table_schema,f_table_name,' ||
										  'f_geometry_column,coord_dimension,srid,type)' ||
		' VALUES (' ||
		quote_literal('') || ',' ||
		quote_literal(real_schema) || ',' ||
		quote_literal(table_name) || ',' ||
		quote_literal(column_name) || ',' ||
		new_dim::text || ',' ||
		new_srid::text || ',' ||
		quote_literal(new_type) || ')';
	RAISE DEBUG '%', sql;
	EXECUTE sql;


	-- Add table CHECKs
	sql := 'ALTER TABLE ' ||
		quote_ident(real_schema) || '.' || quote_ident(table_name)
		|| ' ADD CONSTRAINT '
		|| quote_ident('enforce_srid_' || column_name)
		|| ' CHECK (ST_SRID(' || quote_ident(column_name) ||
		') = ' || new_srid::text || ')' ;
	RAISE DEBUG '%', sql;
	EXECUTE sql;

	sql := 'ALTER TABLE ' ||
		quote_ident(real_schema) || '.' || quote_ident(table_name)
		|| ' ADD CONSTRAINT '
		|| quote_ident('enforce_dims_' || column_name)
		|| ' CHECK (ST_NDims(' || quote_ident(column_name) ||
		') = ' || new_dim::text || ')' ;
	RAISE DEBUG '%', sql;
	EXECUTE sql;

	IF ( NOT (new_type = 'GEOMETRY')) THEN
		sql := 'ALTER TABLE ' ||
			quote_ident(real_schema) || '.' || quote_ident(table_name) || ' ADD CONSTRAINT ' ||
			quote_ident('enforce_geotype_' || column_name) ||
			' CHECK (GeometryType(' ||
			quote_ident(column_name) || ')=' ||
			quote_literal(new_type) || ' OR (' ||
			quote_ident(column_name) || ') is null)';
		RAISE DEBUG '%', sql;
		EXECUTE sql;
	END IF;

	RETURN
		real_schema || '.' ||
		table_name || '.' || column_name ||
		' SRID:' || new_srid::text ||
		' TYPE:' || new_type ||
		' DIMS:' || new_dim::text || ' ';
END;
$_$;
 �   DROP FUNCTION public.addgeometrycolumn(character varying, character varying, character varying, character varying, integer, character varying, integer);
       public       postgres    false    3    1031            H           1255    16777 o   addgeometrycolumn(character varying, character varying, character varying, integer, character varying, integer)    FUNCTION     '  CREATE FUNCTION addgeometrycolumn(character varying, character varying, character varying, integer, character varying, integer) RETURNS text
    LANGUAGE plpgsql STABLE STRICT
    AS $_$ 
DECLARE
	ret  text;
BEGIN
	SELECT AddGeometryColumn('',$1,$2,$3,$4,$5,$6) into ret;
	RETURN ret;
END;
$_$;
 �   DROP FUNCTION public.addgeometrycolumn(character varying, character varying, character varying, integer, character varying, integer);
       public       postgres    false    3    1031            I           1255    16778 \   addgeometrycolumn(character varying, character varying, integer, character varying, integer)    FUNCTION       CREATE FUNCTION addgeometrycolumn(character varying, character varying, integer, character varying, integer) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$ 
DECLARE
	ret  text;
BEGIN
	SELECT AddGeometryColumn('','',$1,$2,$3,$4,$5) into ret;
	RETURN ret;
END;
$_$;
 s   DROP FUNCTION public.addgeometrycolumn(character varying, character varying, integer, character varying, integer);
       public       postgres    false    3    1031                       1255    16710    addpoint(geometry, geometry)    FUNCTION     �   CREATE FUNCTION addpoint(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_addpoint';
 3   DROP FUNCTION public.addpoint(geometry, geometry);
       public       postgres    false    993    3    993    993                       1255    16712 %   addpoint(geometry, geometry, integer)    FUNCTION     �   CREATE FUNCTION addpoint(geometry, geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_addpoint';
 <   DROP FUNCTION public.addpoint(geometry, geometry, integer);
       public       postgres    false    993    3    993    993            "            1255    16406 �   affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision)    FUNCTION     Y  CREATE FUNCTION affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_affine';
 �   DROP FUNCTION public.affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision);
       public       postgres    false    3    993    993            $            1255    16408 |   affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision)    FUNCTION       CREATE FUNCTION affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1,  $2, $3, 0,  $4, $5, 0,  0, 0, 1,  $6, $7, 0)$_$;
 �   DROP FUNCTION public.affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision);
       public       postgres    false    3    993    993            �            1255    16627    area(geometry)    FUNCTION     �   CREATE FUNCTION area(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_area_polygon';
 %   DROP FUNCTION public.area(geometry);
       public       postgres    false    3    993            �            1255    16625    area2d(geometry)    FUNCTION     �   CREATE FUNCTION area2d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_area_polygon';
 '   DROP FUNCTION public.area2d(geometry);
       public       postgres    false    3    993            2           1255    17045    asbinary(geometry)    FUNCTION     �   CREATE FUNCTION asbinary(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asBinary';
 )   DROP FUNCTION public.asbinary(geometry);
       public       postgres    false    3    993            4           1255    17047    asbinary(geometry, text)    FUNCTION     �   CREATE FUNCTION asbinary(geometry, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asBinary';
 /   DROP FUNCTION public.asbinary(geometry, text);
       public       postgres    false    3    993            �            1255    16677    asewkb(geometry)    FUNCTION     ~   CREATE FUNCTION asewkb(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'WKBFromLWGEOM';
 '   DROP FUNCTION public.asewkb(geometry);
       public       postgres    false    3    993                       1255    16683    asewkb(geometry, text)    FUNCTION     �   CREATE FUNCTION asewkb(geometry, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'WKBFromLWGEOM';
 -   DROP FUNCTION public.asewkb(geometry, text);
       public       postgres    false    993    3            �            1255    16675    asewkt(geometry)    FUNCTION     }   CREATE FUNCTION asewkt(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asEWKT';
 '   DROP FUNCTION public.asewkt(geometry);
       public       postgres    false    3    993            �           1255    16980    asgml(geometry, integer)    FUNCTION     �   CREATE FUNCTION asgml(geometry, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGML(2, $1, $2, 0)$_$;
 /   DROP FUNCTION public.asgml(geometry, integer);
       public       postgres    false    3    993            �           1255    16982    asgml(geometry)    FUNCTION     |   CREATE FUNCTION asgml(geometry) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGML(2, $1, 15, 0)$_$;
 &   DROP FUNCTION public.asgml(geometry);
       public       postgres    false    3    993            �            1255    16679    ashexewkb(geometry)    FUNCTION     �   CREATE FUNCTION ashexewkb(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asHEXEWKB';
 *   DROP FUNCTION public.ashexewkb(geometry);
       public       postgres    false    3    993            �            1255    16681    ashexewkb(geometry, text)    FUNCTION     �   CREATE FUNCTION ashexewkb(geometry, text) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asHEXEWKB';
 0   DROP FUNCTION public.ashexewkb(geometry, text);
       public       postgres    false    993    3            �           1255    16989    askml(geometry, integer)    FUNCTION     �   CREATE FUNCTION askml(geometry, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsKML(2, transform($1,4326), $2)$_$;
 /   DROP FUNCTION public.askml(geometry, integer);
       public       postgres    false    3    993            �           1255    16991    askml(geometry)    FUNCTION     �   CREATE FUNCTION askml(geometry) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsKML(2, transform($1,4326), 15)$_$;
 &   DROP FUNCTION public.askml(geometry);
       public       postgres    false    3    993            �           1255    16992 !   askml(integer, geometry, integer)    FUNCTION     �   CREATE FUNCTION askml(integer, geometry, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsKML($1, transform($2,4326), $3)$_$;
 8   DROP FUNCTION public.askml(integer, geometry, integer);
       public       postgres    false    3    993            �           1255    16973 !   assvg(geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION assvg(geometry, integer, integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'assvg_geometry';
 8   DROP FUNCTION public.assvg(geometry, integer, integer);
       public       postgres    false    3    993            �           1255    16975    assvg(geometry, integer)    FUNCTION     �   CREATE FUNCTION assvg(geometry, integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'assvg_geometry';
 /   DROP FUNCTION public.assvg(geometry, integer);
       public       postgres    false    3    993            �           1255    16977    assvg(geometry)    FUNCTION     }   CREATE FUNCTION assvg(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'assvg_geometry';
 &   DROP FUNCTION public.assvg(geometry);
       public       postgres    false    3    993            6           1255    17049    astext(geometry)    FUNCTION     }   CREATE FUNCTION astext(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asText';
 '   DROP FUNCTION public.astext(geometry);
       public       postgres    false    993    3            �            1255    16639    azimuth(geometry, geometry)    FUNCTION     �   CREATE FUNCTION azimuth(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_azimuth';
 2   DROP FUNCTION public.azimuth(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    17157    bdmpolyfromtext(text, integer)    FUNCTION     �  CREATE FUNCTION bdmpolyfromtext(text, integer) RETURNS geometry
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$ 
DECLARE
	geomtext alias for $1;
	srid alias for $2;
	mline geometry;
	geom geometry;
BEGIN
	mline := MultiLineStringFromText(geomtext, srid);

	IF mline IS NULL
	THEN
		RAISE EXCEPTION 'Input is not a MultiLinestring';
	END IF;

	geom := multi(BuildArea(mline));

	RETURN geom;
END;
$_$;
 5   DROP FUNCTION public.bdmpolyfromtext(text, integer);
       public       postgres    false    3    1031    993            �           1255    17155    bdpolyfromtext(text, integer)    FUNCTION       CREATE FUNCTION bdpolyfromtext(text, integer) RETURNS geometry
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$ 
DECLARE
	geomtext alias for $1;
	srid alias for $2;
	mline geometry;
	geom geometry;
BEGIN
	mline := MultiLineStringFromText(geomtext, srid);

	IF mline IS NULL
	THEN
		RAISE EXCEPTION 'Input is not a MultiLinestring';
	END IF;

	geom := BuildArea(mline);

	IF GeometryType(geom) != 'POLYGON'
	THEN
		RAISE EXCEPTION 'Input returns more then a single polygon, try using BdMPolyFromText instead';
	END IF;

	RETURN geom;
END;
$_$;
 4   DROP FUNCTION public.bdpolyfromtext(text, integer);
       public       postgres    false    1031    3    993            �           1255    16883    boundary(geometry)    FUNCTION     ~   CREATE FUNCTION boundary(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'boundary';
 )   DROP FUNCTION public.boundary(geometry);
       public       postgres    false    3    993    993            g           1255    16807    box(geometry)    FUNCTION     y   CREATE FUNCTION box(geometry) RETURNS box
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_BOX';
 $   DROP FUNCTION public.box(geometry);
       public       postgres    false    3    993            m           1255    16813 
   box(box3d)    FUNCTION     u   CREATE FUNCTION box(box3d) RETURNS box
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_to_BOX';
 !   DROP FUNCTION public.box(box3d);
       public       postgres    false    3    996            c           1255    16803    box2d(geometry)    FUNCTION     �   CREATE FUNCTION box2d(geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_BOX2DFLOAT4';
 &   DROP FUNCTION public.box2d(geometry);
       public       postgres    false    3    1005    993            i           1255    16809    box2d(box3d)    FUNCTION     �   CREATE FUNCTION box2d(box3d) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_to_BOX2DFLOAT4';
 #   DROP FUNCTION public.box2d(box3d);
       public       postgres    false    3    1005    996            _            1255    16475    box2d_contain(box2d, box2d)    FUNCTION     �   CREATE FUNCTION box2d_contain(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_contain';
 2   DROP FUNCTION public.box2d_contain(box2d, box2d);
       public       postgres    false    1005    1005    3            a            1255    16477    box2d_contained(box2d, box2d)    FUNCTION     �   CREATE FUNCTION box2d_contained(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_contained';
 4   DROP FUNCTION public.box2d_contained(box2d, box2d);
       public       postgres    false    1005    3    1005            S            1255    16462    box2d_in(cstring)    FUNCTION     �   CREATE FUNCTION box2d_in(cstring) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_in';
 (   DROP FUNCTION public.box2d_in(cstring);
       public       postgres    false    3    1005            g            1255    16483    box2d_intersects(box2d, box2d)    FUNCTION     �   CREATE FUNCTION box2d_intersects(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_intersects';
 5   DROP FUNCTION public.box2d_intersects(box2d, box2d);
       public       postgres    false    1005    1005    3            [            1255    16471    box2d_left(box2d, box2d)    FUNCTION     �   CREATE FUNCTION box2d_left(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_left';
 /   DROP FUNCTION public.box2d_left(box2d, box2d);
       public       postgres    false    1005    3    1005            U            1255    16464    box2d_out(box2d)    FUNCTION     �   CREATE FUNCTION box2d_out(box2d) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_out';
 '   DROP FUNCTION public.box2d_out(box2d);
       public       postgres    false    3    1005            c            1255    16479    box2d_overlap(box2d, box2d)    FUNCTION     �   CREATE FUNCTION box2d_overlap(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_overlap';
 2   DROP FUNCTION public.box2d_overlap(box2d, box2d);
       public       postgres    false    3    1005    1005            W            1255    16467    box2d_overleft(box2d, box2d)    FUNCTION     �   CREATE FUNCTION box2d_overleft(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_overleft';
 3   DROP FUNCTION public.box2d_overleft(box2d, box2d);
       public       postgres    false    1005    3    1005            Y            1255    16469    box2d_overright(box2d, box2d)    FUNCTION     �   CREATE FUNCTION box2d_overright(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_overright';
 4   DROP FUNCTION public.box2d_overright(box2d, box2d);
       public       postgres    false    3    1005    1005            ]            1255    16473    box2d_right(box2d, box2d)    FUNCTION     �   CREATE FUNCTION box2d_right(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_right';
 0   DROP FUNCTION public.box2d_right(box2d, box2d);
       public       postgres    false    1005    3    1005            e            1255    16481    box2d_same(box2d, box2d)    FUNCTION     �   CREATE FUNCTION box2d_same(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_same';
 /   DROP FUNCTION public.box2d_same(box2d, box2d);
       public       postgres    false    1005    3    1005            e           1255    16805    box3d(geometry)    FUNCTION        CREATE FUNCTION box3d(geometry) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_BOX3D';
 &   DROP FUNCTION public.box3d(geometry);
       public       postgres    false    3    996    993            k           1255    16811    box3d(box2d)    FUNCTION     �   CREATE FUNCTION box3d(box2d) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_to_BOX3D';
 #   DROP FUNCTION public.box3d(box2d);
       public       postgres    false    3    996    1005            :            1255    16431    box3d_in(cstring)    FUNCTION     z   CREATE FUNCTION box3d_in(cstring) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_in';
 (   DROP FUNCTION public.box3d_in(cstring);
       public       postgres    false    3    996            ;            1255    16432    box3d_out(box3d)    FUNCTION     |   CREATE FUNCTION box3d_out(box3d) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_out';
 '   DROP FUNCTION public.box3d_out(box3d);
       public       postgres    false    996    3            q           1255    16817    box3dtobox(box3d)    FUNCTION     m   CREATE FUNCTION box3dtobox(box3d) RETURNS box
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT box($1)$_$;
 (   DROP FUNCTION public.box3dtobox(box3d);
       public       postgres    false    3    996            �           1255    16870 "   buffer(geometry, double precision)    FUNCTION     �   CREATE FUNCTION buffer(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'buffer';
 9   DROP FUNCTION public.buffer(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16872 +   buffer(geometry, double precision, integer)    FUNCTION     �   CREATE FUNCTION buffer(geometry, double precision, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'buffer';
 B   DROP FUNCTION public.buffer(geometry, double precision, integer);
       public       postgres    false    3    993    993            (           1255    16722    buildarea(geometry)    FUNCTION     �   CREATE FUNCTION buildarea(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_buildarea';
 *   DROP FUNCTION public.buildarea(geometry);
       public       postgres    false    3    993    993            |           1255    16828    bytea(geometry)    FUNCTION        CREATE FUNCTION bytea(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_bytea';
 &   DROP FUNCTION public.bytea(geometry);
       public       postgres    false    3    993                       1255    16689    cache_bbox()    FUNCTION     h   CREATE FUNCTION cache_bbox() RETURNS trigger
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'cache_bbox';
 #   DROP FUNCTION public.cache_bbox();
       public       postgres    false    3            �           1255    16963    centroid(geometry)    FUNCTION     ~   CREATE FUNCTION centroid(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'centroid';
 )   DROP FUNCTION public.centroid(geometry);
       public       postgres    false    3    993    993            �           1255    17165    checkauth(text, text, text)    FUNCTION     z  CREATE FUNCTION checkauth(text, text, text) RETURNS integer
    LANGUAGE plpgsql
    AS $_$ 
DECLARE
	schema text;
BEGIN
	IF NOT LongTransactionsEnabled() THEN
		RAISE EXCEPTION 'Long transaction support disabled, use EnableLongTransaction() to enable.';
	END IF;

	if ( $1 != '' ) THEN
		schema = $1;
	ELSE
		SELECT current_schema() into schema;
	END IF;

	-- TODO: check for an already existing trigger ?

	EXECUTE 'CREATE TRIGGER check_auth BEFORE UPDATE OR DELETE ON ' 
		|| quote_ident(schema) || '.' || quote_ident($2)
		||' FOR EACH ROW EXECUTE PROCEDURE CheckAuthTrigger('
		|| quote_literal($3) || ')';

	RETURN 0;
END;
$_$;
 2   DROP FUNCTION public.checkauth(text, text, text);
       public       postgres    false    3    1031            �           1255    17166    checkauth(text, text)    FUNCTION     t   CREATE FUNCTION checkauth(text, text) RETURNS integer
    LANGUAGE sql
    AS $_$ SELECT CheckAuth('', $1, $2) $_$;
 ,   DROP FUNCTION public.checkauth(text, text);
       public       postgres    false    3            �           1255    17167    checkauthtrigger()    FUNCTION     w   CREATE FUNCTION checkauthtrigger() RETURNS trigger
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'check_authorization';
 )   DROP FUNCTION public.checkauthtrigger();
       public       postgres    false    3            O            1255    16457    chip_in(cstring)    FUNCTION     w   CREATE FUNCTION chip_in(cstring) RETURNS chip
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_in';
 '   DROP FUNCTION public.chip_in(cstring);
       public       postgres    false    3    1002            Q            1255    16459    chip_out(chip)    FUNCTION     y   CREATE FUNCTION chip_out(chip) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_out';
 %   DROP FUNCTION public.chip_out(chip);
       public       postgres    false    3    1002            �           1255    16893    collect(geometry, geometry)    FUNCTION     �   CREATE FUNCTION collect(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'LWGEOM_collect';
 2   DROP FUNCTION public.collect(geometry, geometry);
       public       postgres    false    3    993    993    993            �           1255    16899    collect_garray(geometry[])    FUNCTION     �   CREATE FUNCTION collect_garray(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_collect_garray';
 1   DROP FUNCTION public.collect_garray(geometry[]);
       public       postgres    false    3    993    995            �           1255    16891    collector(geometry, geometry)    FUNCTION     �   CREATE FUNCTION collector(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'LWGEOM_collect';
 4   DROP FUNCTION public.collector(geometry, geometry);
       public       postgres    false    3    993    993    993            3           1255    16736    combine_bbox(box2d, geometry)    FUNCTION     �   CREATE FUNCTION combine_bbox(box2d, geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_combine';
 4   DROP FUNCTION public.combine_bbox(box2d, geometry);
       public       postgres    false    3    1005    1005    993            5           1255    16738 $   combine_bbox(box3d_extent, geometry)    FUNCTION     �   CREATE FUNCTION combine_bbox(box3d_extent, geometry) RETURNS box3d_extent
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'BOX3D_combine';
 ;   DROP FUNCTION public.combine_bbox(box3d_extent, geometry);
       public       postgres    false    3    999    999    993            7           1255    16742    combine_bbox(box3d, geometry)    FUNCTION     �   CREATE FUNCTION combine_bbox(box3d, geometry) RETURNS box3d
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'BOX3D_combine';
 4   DROP FUNCTION public.combine_bbox(box3d, geometry);
       public       postgres    false    3    996    996    993            �            1255    16594    compression(chip)    FUNCTION     �   CREATE FUNCTION compression(chip) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getCompression';
 (   DROP FUNCTION public.compression(chip);
       public       postgres    false    3    1002            �           1255    16948    contains(geometry, geometry)    FUNCTION     �   CREATE FUNCTION contains(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'contains';
 3   DROP FUNCTION public.contains(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16874    convexhull(geometry)    FUNCTION     �   CREATE FUNCTION convexhull(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'convexhull';
 +   DROP FUNCTION public.convexhull(geometry);
       public       postgres    false    3    993    993            �           1255    16942    crosses(geometry, geometry)    FUNCTION     �   CREATE FUNCTION crosses(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'crosses';
 2   DROP FUNCTION public.crosses(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16592    datatype(chip)    FUNCTION     �   CREATE FUNCTION datatype(chip) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getDatatype';
 %   DROP FUNCTION public.datatype(chip);
       public       postgres    false    3    1002            �           1255    16881    difference(geometry, geometry)    FUNCTION     �   CREATE FUNCTION difference(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'difference';
 5   DROP FUNCTION public.difference(geometry, geometry);
       public       postgres    false    3    993    993    993                       1255    17011    dimension(geometry)    FUNCTION     �   CREATE FUNCTION dimension(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_dimension';
 *   DROP FUNCTION public.dimension(geometry);
       public       postgres    false    3    993            �           1255    17171    disablelongtransactions()    FUNCTION     M  CREATE FUNCTION disablelongtransactions() RETURNS text
    LANGUAGE plpgsql
    AS $$ 
DECLARE
	rec RECORD;

BEGIN

	--
	-- Drop all triggers applied by CheckAuth()
	--
	FOR rec IN
		SELECT c.relname, t.tgname, t.tgargs FROM pg_trigger t, pg_class c, pg_proc p
		WHERE p.proname = 'checkauthtrigger' and t.tgfoid = p.oid and t.tgrelid = c.oid
	LOOP
		EXECUTE 'DROP TRIGGER ' || quote_ident(rec.tgname) ||
			' ON ' || quote_ident(rec.relname);
	END LOOP;

	--
	-- Drop the authorization_table table
	--
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorization_table' LOOP
		DROP TABLE authorization_table;
	END LOOP;

	--
	-- Drop the authorized_tables view
	--
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorized_tables' LOOP
		DROP VIEW authorized_tables;
	END LOOP;

	RETURN 'Long transactions support disabled';
END;
$$;
 0   DROP FUNCTION public.disablelongtransactions();
       public       postgres    false    3    1031            �           1255    16932    disjoint(geometry, geometry)    FUNCTION     �   CREATE FUNCTION disjoint(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'disjoint';
 3   DROP FUNCTION public.disjoint(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16633    distance(geometry, geometry)    FUNCTION     �   CREATE FUNCTION distance(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_mindistance2d';
 3   DROP FUNCTION public.distance(geometry, geometry);
       public       postgres    false    993    3    993            �            1255    16631 #   distance_sphere(geometry, geometry)    FUNCTION     �   CREATE FUNCTION distance_sphere(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_distance_sphere';
 :   DROP FUNCTION public.distance_sphere(geometry, geometry);
       public       postgres    false    993    3    993            �            1255    16629 /   distance_spheroid(geometry, geometry, spheroid)    FUNCTION     �   CREATE FUNCTION distance_spheroid(geometry, geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_distance_ellipsoid_point';
 F   DROP FUNCTION public.distance_spheroid(geometry, geometry, spheroid);
       public       postgres    false    993    3    993    990            �            1255    16580    dropbbox(geometry)    FUNCTION     �   CREATE FUNCTION dropbbox(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_dropBBOX';
 )   DROP FUNCTION public.dropbbox(geometry);
       public       postgres    false    993    993    3            P           1255    16779 ^   dropgeometrycolumn(character varying, character varying, character varying, character varying)    FUNCTION     �  CREATE FUNCTION dropgeometrycolumn(character varying, character varying, character varying, character varying) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	catalog_name alias for $1; 
	schema_name alias for $2;
	table_name alias for $3;
	column_name alias for $4;
	myrec RECORD;
	okay boolean;
	real_schema name;

BEGIN


	-- Find, check or fix schema_name
	IF ( schema_name != '' ) THEN
		okay = 'f';

		FOR myrec IN SELECT nspname FROM pg_namespace WHERE text(nspname) = schema_name LOOP
			okay := 't';
		END LOOP;

		IF ( okay <> 't' ) THEN
			RAISE NOTICE 'Invalid schema name - using current_schema()';
			SELECT current_schema() into real_schema;
		ELSE
			real_schema = schema_name;
		END IF;
	ELSE
		SELECT current_schema() into real_schema;
	END IF;

 	-- Find out if the column is in the geometry_columns table
	okay = 'f';
	FOR myrec IN SELECT * from geometry_columns where f_table_schema = text(real_schema) and f_table_name = table_name and f_geometry_column = column_name LOOP
		okay := 't';
	END LOOP; 
	IF (okay <> 't') THEN 
		RAISE EXCEPTION 'column not found in geometry_columns table';
		RETURN 'f';
	END IF;

	-- Remove ref from geometry_columns table
	EXECUTE 'delete from geometry_columns where f_table_schema = ' ||
		quote_literal(real_schema) || ' and f_table_name = ' ||
		quote_literal(table_name)  || ' and f_geometry_column = ' ||
		quote_literal(column_name);
	
	-- Remove table column
	EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) || '.' ||
		quote_ident(table_name) || ' DROP COLUMN ' ||
		quote_ident(column_name);

	RETURN real_schema || '.' || table_name || '.' || column_name ||' effectively removed.';
	
END;
$_$;
 u   DROP FUNCTION public.dropgeometrycolumn(character varying, character varying, character varying, character varying);
       public       postgres    false    3    1031            Q           1255    16780 K   dropgeometrycolumn(character varying, character varying, character varying)    FUNCTION     �   CREATE FUNCTION dropgeometrycolumn(character varying, character varying, character varying) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	ret text;
BEGIN
	SELECT DropGeometryColumn('',$1,$2,$3) into ret;
	RETURN ret;
END;
$_$;
 b   DROP FUNCTION public.dropgeometrycolumn(character varying, character varying, character varying);
       public       postgres    false    3    1031            R           1255    16781 8   dropgeometrycolumn(character varying, character varying)    FUNCTION     �   CREATE FUNCTION dropgeometrycolumn(character varying, character varying) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	ret text;
BEGIN
	SELECT DropGeometryColumn('','',$1,$2) into ret;
	RETURN ret;
END;
$_$;
 O   DROP FUNCTION public.dropgeometrycolumn(character varying, character varying);
       public       postgres    false    3    1031            S           1255    16782 J   dropgeometrytable(character varying, character varying, character varying)    FUNCTION       CREATE FUNCTION dropgeometrytable(character varying, character varying, character varying) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	catalog_name alias for $1; 
	schema_name alias for $2;
	table_name alias for $3;
	real_schema name;

BEGIN

	IF ( schema_name = '' ) THEN
		SELECT current_schema() into real_schema;
	ELSE
		real_schema = schema_name;
	END IF;

	-- Remove refs from geometry_columns table
	EXECUTE 'DELETE FROM geometry_columns WHERE ' ||
		'f_table_schema = ' || quote_literal(real_schema) ||
		' AND ' ||
		' f_table_name = ' || quote_literal(table_name);
	
	-- Remove table 
	EXECUTE 'DROP TABLE '
		|| quote_ident(real_schema) || '.' ||
		quote_ident(table_name);

	RETURN
		real_schema || '.' ||
		table_name ||' dropped.';
	
END;
$_$;
 a   DROP FUNCTION public.dropgeometrytable(character varying, character varying, character varying);
       public       postgres    false    3    1031            T           1255    16783 7   dropgeometrytable(character varying, character varying)    FUNCTION     �   CREATE FUNCTION dropgeometrytable(character varying, character varying) RETURNS text
    LANGUAGE sql STRICT
    AS $_$ SELECT DropGeometryTable('',$1,$2) $_$;
 N   DROP FUNCTION public.dropgeometrytable(character varying, character varying);
       public       postgres    false    3            U           1255    16784 $   dropgeometrytable(character varying)    FUNCTION     �   CREATE FUNCTION dropgeometrytable(character varying) RETURNS text
    LANGUAGE sql STRICT
    AS $_$ SELECT DropGeometryTable('','',$1) $_$;
 ;   DROP FUNCTION public.dropgeometrytable(character varying);
       public       postgres    false    3            /           1255    16732    dump(geometry)    FUNCTION     �   CREATE FUNCTION dump(geometry) RETURNS SETOF geometry_dump
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_dump';
 %   DROP FUNCTION public.dump(geometry);
       public       postgres    false    3    1008    993            1           1255    16734    dumprings(geometry)    FUNCTION     �   CREATE FUNCTION dumprings(geometry) RETURNS SETOF geometry_dump
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_dump_rings';
 *   DROP FUNCTION public.dumprings(geometry);
       public       postgres    false    3    1008    993            �           1255    17169    enablelongtransactions()    FUNCTION     X  CREATE FUNCTION enablelongtransactions() RETURNS text
    LANGUAGE plpgsql
    AS $$ 
DECLARE
	"query" text;
	exists bool;
	rec RECORD;

BEGIN

	exists = 'f';
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorization_table'
	LOOP
		exists = 't';
	END LOOP;

	IF NOT exists
	THEN
		"query" = 'CREATE TABLE authorization_table (
			toid oid, -- table oid
			rid text, -- row id
			expires timestamp,
			authid text
		)';
		EXECUTE "query";
	END IF;

	exists = 'f';
	FOR rec IN SELECT * FROM pg_class WHERE relname = 'authorized_tables'
	LOOP
		exists = 't';
	END LOOP;

	IF NOT exists THEN
		"query" = 'CREATE VIEW authorized_tables AS ' ||
			'SELECT ' ||
			'n.nspname as schema, ' ||
			'c.relname as table, trim(' ||
			quote_literal(chr(92) || '000') ||
			' from t.tgargs) as id_column ' ||
			'FROM pg_trigger t, pg_class c, pg_proc p ' ||
			', pg_namespace n ' ||
			'WHERE p.proname = ' || quote_literal('checkauthtrigger') ||
			' AND c.relnamespace = n.oid' ||
			' AND t.tgfoid = p.oid and t.tgrelid = c.oid';
		EXECUTE "query";
	END IF;

	RETURN 'Long transactions support enabled';
END;
$$;
 /   DROP FUNCTION public.enablelongtransactions();
       public       postgres    false    3    1031            (           1255    17035    endpoint(geometry)    FUNCTION     �   CREATE FUNCTION endpoint(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_endpoint_linestring';
 )   DROP FUNCTION public.endpoint(geometry);
       public       postgres    false    993    993    3            �            1255    16661    envelope(geometry)    FUNCTION     �   CREATE FUNCTION envelope(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_envelope';
 )   DROP FUNCTION public.envelope(geometry);
       public       postgres    false    993    3    993            �           1255    16971    equals(geometry, geometry)    FUNCTION     �   CREATE FUNCTION equals(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'geomequals';
 1   DROP FUNCTION public.equals(geometry, geometry);
       public       postgres    false    3    993    993            9           1255    16746 "   estimated_extent(text, text, text)    FUNCTION     �   CREATE FUNCTION estimated_extent(text, text, text) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT SECURITY DEFINER
    AS '$libdir/postgis-1.4', 'LWGEOM_estimated_extent';
 9   DROP FUNCTION public.estimated_extent(text, text, text);
       public       postgres    false    3    1005            ;           1255    16748    estimated_extent(text, text)    FUNCTION     �   CREATE FUNCTION estimated_extent(text, text) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT SECURITY DEFINER
    AS '$libdir/postgis-1.4', 'LWGEOM_estimated_extent';
 3   DROP FUNCTION public.estimated_extent(text, text);
       public       postgres    false    3    1005            �            1255    16655    expand(box3d, double precision)    FUNCTION     �   CREATE FUNCTION expand(box3d, double precision) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_expand';
 6   DROP FUNCTION public.expand(box3d, double precision);
       public       postgres    false    996    3    996            �            1255    16657    expand(box2d, double precision)    FUNCTION     �   CREATE FUNCTION expand(box2d, double precision) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_expand';
 6   DROP FUNCTION public.expand(box2d, double precision);
       public       postgres    false    3    1005    1005            �            1255    16659 "   expand(geometry, double precision)    FUNCTION     �   CREATE FUNCTION expand(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_expand';
 9   DROP FUNCTION public.expand(geometry, double precision);
       public       postgres    false    993    993    3                       1255    17013    exteriorring(geometry)    FUNCTION     �   CREATE FUNCTION exteriorring(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_exteriorring_polygon';
 -   DROP FUNCTION public.exteriorring(geometry);
       public       postgres    false    993    3    993            �            1255    16588    factor(chip)    FUNCTION     z   CREATE FUNCTION factor(chip) RETURNS real
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getFactor';
 #   DROP FUNCTION public.factor(chip);
       public       postgres    false    3    1002            =           1255    16750    find_extent(text, text, text)    FUNCTION     z  CREATE FUNCTION find_extent(text, text, text) RETURNS box2d
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
DECLARE
	schemaname alias for $1;
	tablename alias for $2;
	columnname alias for $3;
	myrec RECORD;

BEGIN
	FOR myrec IN EXECUTE 'SELECT extent("' || columnname || '") FROM "' || schemaname || '"."' || tablename || '"' LOOP
		return myrec.extent;
	END LOOP; 
END;
$_$;
 4   DROP FUNCTION public.find_extent(text, text, text);
       public       postgres    false    3    1031    1005            ?           1255    16752    find_extent(text, text)    FUNCTION     C  CREATE FUNCTION find_extent(text, text) RETURNS box2d
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
DECLARE
	tablename alias for $1;
	columnname alias for $2;
	myrec RECORD;

BEGIN
	FOR myrec IN EXECUTE 'SELECT extent("' || columnname || '") FROM "' || tablename || '"' LOOP
		return myrec.extent;
	END LOOP; 
END;
$_$;
 .   DROP FUNCTION public.find_extent(text, text);
       public       postgres    false    3    1031    1005            Y           1255    16788 B   find_srid(character varying, character varying, character varying)    FUNCTION     t  CREATE FUNCTION find_srid(character varying, character varying, character varying) RETURNS integer
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
DECLARE
	schem text;
	tabl text;
	sr int4;
BEGIN
	IF $1 IS NULL THEN
	  RAISE EXCEPTION 'find_srid() - schema is NULL!';
	END IF;
	IF $2 IS NULL THEN
	  RAISE EXCEPTION 'find_srid() - table name is NULL!';
	END IF;
	IF $3 IS NULL THEN
	  RAISE EXCEPTION 'find_srid() - column name is NULL!';
	END IF;
	schem = $1;
	tabl = $2;
-- if the table contains a . and the schema is empty
-- split the table into a schema and a table
-- otherwise drop through to default behavior
	IF ( schem = '' and tabl LIKE '%.%' ) THEN
	 schem = substr(tabl,1,strpos(tabl,'.')-1);
	 tabl = substr(tabl,length(schem)+2);
	ELSE
	 schem = schem || '%';
	END IF;

	select SRID into sr from geometry_columns where f_table_schema like schem and f_table_name = tabl and f_geometry_column = $3;
	IF NOT FOUND THEN
	   RAISE EXCEPTION 'find_srid() - couldnt find the corresponding SRID - is the geometry registered in the GEOMETRY_COLUMNS table?  Is there an uppercase/lowercase missmatch?';
	END IF;
	return sr;
END;
$_$;
 Y   DROP FUNCTION public.find_srid(character varying, character varying, character varying);
       public       postgres    false    3    1031            C           1255    16771    fix_geometry_columns()    FUNCTION     �  CREATE FUNCTION fix_geometry_columns() RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
	mislinked record;
	result text;
	linked integer;
	deleted integer;
	foundschema integer;
BEGIN

	-- Since 7.3 schema support has been added.
	-- Previous postgis versions used to put the database name in
	-- the schema column. This needs to be fixed, so we try to 
	-- set the correct schema for each geometry_colums record
	-- looking at table, column, type and srid.
	UPDATE geometry_columns SET f_table_schema = n.nspname
		FROM pg_namespace n, pg_class c, pg_attribute a,
			pg_constraint sridcheck, pg_constraint typecheck
	        WHERE ( f_table_schema is NULL
		OR f_table_schema = ''
	        OR f_table_schema NOT IN (
	                SELECT nspname::varchar
	                FROM pg_namespace nn, pg_class cc, pg_attribute aa
	                WHERE cc.relnamespace = nn.oid
	                AND cc.relname = f_table_name::name
	                AND aa.attrelid = cc.oid
	                AND aa.attname = f_geometry_column::name))
	        AND f_table_name::name = c.relname
	        AND c.oid = a.attrelid
	        AND c.relnamespace = n.oid
	        AND f_geometry_column::name = a.attname

	        AND sridcheck.conrelid = c.oid
		AND sridcheck.consrc LIKE '(srid(% = %)'
	        AND sridcheck.consrc ~ textcat(' = ', srid::text)

	        AND typecheck.conrelid = c.oid
		AND typecheck.consrc LIKE
		'((geometrytype(%) = ''%''::text) OR (% IS NULL))'
	        AND typecheck.consrc ~ textcat(' = ''', type::text)

	        AND NOT EXISTS (
	                SELECT oid FROM geometry_columns gc
	                WHERE c.relname::varchar = gc.f_table_name
	                AND n.nspname::varchar = gc.f_table_schema
	                AND a.attname::varchar = gc.f_geometry_column
	        );

	GET DIAGNOSTICS foundschema = ROW_COUNT;

	-- no linkage to system table needed
	return 'fixed:'||foundschema::text;

END;
$$;
 -   DROP FUNCTION public.fix_geometry_columns();
       public       postgres    false    3    1031            �            1255    16641    force_2d(geometry)    FUNCTION     �   CREATE FUNCTION force_2d(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_2d';
 )   DROP FUNCTION public.force_2d(geometry);
       public       postgres    false    993    993    3            �            1255    16645    force_3d(geometry)    FUNCTION     �   CREATE FUNCTION force_3d(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_3dz';
 )   DROP FUNCTION public.force_3d(geometry);
       public       postgres    false    993    3    993            �            1255    16647    force_3dm(geometry)    FUNCTION     �   CREATE FUNCTION force_3dm(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_3dm';
 *   DROP FUNCTION public.force_3dm(geometry);
       public       postgres    false    3    993    993            �            1255    16643    force_3dz(geometry)    FUNCTION     �   CREATE FUNCTION force_3dz(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_3dz';
 *   DROP FUNCTION public.force_3dz(geometry);
       public       postgres    false    993    3    993            �            1255    16649    force_4d(geometry)    FUNCTION     �   CREATE FUNCTION force_4d(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_4d';
 )   DROP FUNCTION public.force_4d(geometry);
       public       postgres    false    3    993    993            �            1255    16651    force_collection(geometry)    FUNCTION     �   CREATE FUNCTION force_collection(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_collection';
 1   DROP FUNCTION public.force_collection(geometry);
       public       postgres    false    993    3    993            �            1255    16665    forcerhr(geometry)    FUNCTION     �   CREATE FUNCTION forcerhr(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_forceRHR_poly';
 )   DROP FUNCTION public.forcerhr(geometry);
       public       postgres    false    993    993    3            �           1255    16897     geom_accum(geometry[], geometry)    FUNCTION     �   CREATE FUNCTION geom_accum(geometry[], geometry) RETURNS geometry[]
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'LWGEOM_accum';
 7   DROP FUNCTION public.geom_accum(geometry[], geometry);
       public       postgres    false    3    995    995    993            i           1255    17100    geomcollfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION geomcollfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(GeomFromText($1, $2)) = 'GEOMETRYCOLLECTION'
	THEN GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.geomcollfromtext(text, integer);
       public       postgres    false    3    993            k           1255    17102    geomcollfromtext(text)    FUNCTION     �   CREATE FUNCTION geomcollfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(GeomFromText($1)) = 'GEOMETRYCOLLECTION'
	THEN GeomFromText($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.geomcollfromtext(text);
       public       postgres    false    3    993            �           1255    17151    geomcollfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION geomcollfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(GeomFromWKB($1, $2)) = 'GEOMETRYCOLLECTION'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.geomcollfromwkb(bytea, integer);
       public       postgres    false    993    3            �           1255    17153    geomcollfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION geomcollfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(GeomFromWKB($1)) = 'GEOMETRYCOLLECTION'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.geomcollfromwkb(bytea);
       public       postgres    false    993    3            r           1255    16818    geometry(box2d)    FUNCTION     �   CREATE FUNCTION geometry(box2d) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_to_LWGEOM';
 &   DROP FUNCTION public.geometry(box2d);
       public       postgres    false    3    993    1005            t           1255    16820    geometry(box3d)    FUNCTION     �   CREATE FUNCTION geometry(box3d) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_to_LWGEOM';
 &   DROP FUNCTION public.geometry(box3d);
       public       postgres    false    3    993    996            v           1255    16822    geometry(text)    FUNCTION     �   CREATE FUNCTION geometry(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'parse_WKT_lwgeom';
 %   DROP FUNCTION public.geometry(text);
       public       postgres    false    3    993            x           1255    16824    geometry(chip)    FUNCTION     �   CREATE FUNCTION geometry(chip) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_to_LWGEOM';
 %   DROP FUNCTION public.geometry(chip);
       public       postgres    false    3    993    1002            z           1255    16826    geometry(bytea)    FUNCTION     �   CREATE FUNCTION geometry(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_bytea';
 &   DROP FUNCTION public.geometry(bytea);
       public       postgres    false    3    993            �            1255    16526 "   geometry_above(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_above(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_above';
 9   DROP FUNCTION public.geometry_above(geometry, geometry);
       public       postgres    false    993    993    3                        1255    16399    geometry_analyze(internal)    FUNCTION     �   CREATE FUNCTION geometry_analyze(internal) RETURNS boolean
    LANGUAGE c STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_analyze';
 1   DROP FUNCTION public.geometry_analyze(internal);
       public       postgres    false    3            �            1255    16528 "   geometry_below(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_below(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_below';
 9   DROP FUNCTION public.geometry_below(geometry, geometry);
       public       postgres    false    993    993    3            s            1255    16495     geometry_cmp(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_cmp(geometry, geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_cmp';
 7   DROP FUNCTION public.geometry_cmp(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16530 $   geometry_contain(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_contain(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_contain';
 ;   DROP FUNCTION public.geometry_contain(geometry, geometry);
       public       postgres    false    993    3    993            �            1255    16532 &   geometry_contained(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_contained(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_contained';
 =   DROP FUNCTION public.geometry_contained(geometry, geometry);
       public       postgres    false    993    993    3            q            1255    16493    geometry_eq(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_eq(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_eq';
 6   DROP FUNCTION public.geometry_eq(geometry, geometry);
       public       postgres    false    993    3    993            o            1255    16491    geometry_ge(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_ge(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_ge';
 6   DROP FUNCTION public.geometry_ge(geometry, geometry);
       public       postgres    false    993    993    3            m            1255    16489    geometry_gt(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_gt(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_gt';
 6   DROP FUNCTION public.geometry_gt(geometry, geometry);
       public       postgres    false    3    993    993                        1255    16395    geometry_in(cstring)    FUNCTION     �   CREATE FUNCTION geometry_in(cstring) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_in';
 +   DROP FUNCTION public.geometry_in(cstring);
       public       postgres    false    3    993            k            1255    16487    geometry_le(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_le(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_le';
 6   DROP FUNCTION public.geometry_le(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16522 !   geometry_left(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_left(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_left';
 8   DROP FUNCTION public.geometry_left(geometry, geometry);
       public       postgres    false    3    993    993            i            1255    16485    geometry_lt(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_lt(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_lt';
 6   DROP FUNCTION public.geometry_lt(geometry, geometry);
       public       postgres    false    993    3    993                        1255    16397    geometry_out(geometry)    FUNCTION     �   CREATE FUNCTION geometry_out(geometry) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_out';
 -   DROP FUNCTION public.geometry_out(geometry);
       public       postgres    false    993    3            }            1255    16518 &   geometry_overabove(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overabove(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_overabove';
 =   DROP FUNCTION public.geometry_overabove(geometry, geometry);
       public       postgres    false    993    993    3                        1255    16520 &   geometry_overbelow(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overbelow(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_overbelow';
 =   DROP FUNCTION public.geometry_overbelow(geometry, geometry);
       public       postgres    false    993    3    993            �            1255    16534 $   geometry_overlap(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overlap(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_overlap';
 ;   DROP FUNCTION public.geometry_overlap(geometry, geometry);
       public       postgres    false    993    993    3            y            1255    16514 %   geometry_overleft(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overleft(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_overleft';
 <   DROP FUNCTION public.geometry_overleft(geometry, geometry);
       public       postgres    false    993    993    3            {            1255    16516 &   geometry_overright(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_overright(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_overright';
 =   DROP FUNCTION public.geometry_overright(geometry, geometry);
       public       postgres    false    3    993    993                        1255    16401    geometry_recv(internal)    FUNCTION     �   CREATE FUNCTION geometry_recv(internal) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_recv';
 .   DROP FUNCTION public.geometry_recv(internal);
       public       postgres    false    993    3            �            1255    16524 "   geometry_right(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_right(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_right';
 9   DROP FUNCTION public.geometry_right(geometry, geometry);
       public       postgres    false    993    993    3            �            1255    16536 !   geometry_same(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geometry_same(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_same';
 8   DROP FUNCTION public.geometry_same(geometry, geometry);
       public       postgres    false    3    993    993                         1255    16403    geometry_send(geometry)    FUNCTION     �   CREATE FUNCTION geometry_send(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_send';
 .   DROP FUNCTION public.geometry_send(geometry);
       public       postgres    false    3    993            8           1255    17051    geometryfromtext(text)    FUNCTION     �   CREATE FUNCTION geometryfromtext(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_text';
 -   DROP FUNCTION public.geometryfromtext(text);
       public       postgres    false    993    3            :           1255    17053    geometryfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION geometryfromtext(text, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_text';
 6   DROP FUNCTION public.geometryfromtext(text, integer);
       public       postgres    false    993    3                       1255    17009    geometryn(geometry, integer)    FUNCTION     �   CREATE FUNCTION geometryn(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_geometryn_collection';
 3   DROP FUNCTION public.geometryn(geometry, integer);
       public       postgres    false    3    993    993                       1255    17021    geometrytype(geometry)    FUNCTION     �   CREATE FUNCTION geometrytype(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_getTYPE';
 -   DROP FUNCTION public.geometrytype(geometry);
       public       postgres    false    3    993                       1255    16685    geomfromewkb(bytea)    FUNCTION     �   CREATE FUNCTION geomfromewkb(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOMFromWKB';
 *   DROP FUNCTION public.geomfromewkb(bytea);
       public       postgres    false    3    993                       1255    16687    geomfromewkt(text)    FUNCTION     �   CREATE FUNCTION geomfromewkt(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'parse_WKT_lwgeom';
 )   DROP FUNCTION public.geomfromewkt(text);
       public       postgres    false    993    3            <           1255    17055    geomfromtext(text)    FUNCTION     �   CREATE FUNCTION geomfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT geometryfromtext($1)$_$;
 )   DROP FUNCTION public.geomfromtext(text);
       public       postgres    false    993    3            >           1255    17057    geomfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION geomfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT geometryfromtext($1, $2)$_$;
 2   DROP FUNCTION public.geomfromtext(text, integer);
       public       postgres    false    993    3            m           1255    17104    geomfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION geomfromwkb(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_WKB';
 )   DROP FUNCTION public.geomfromwkb(bytea);
       public       postgres    false    993    3            o           1255    17106    geomfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION geomfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT setSRID(GeomFromWKB($1), $2)$_$;
 2   DROP FUNCTION public.geomfromwkb(bytea, integer);
       public       postgres    false    3    993            �           1255    16889    geomunion(geometry, geometry)    FUNCTION     �   CREATE FUNCTION geomunion(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'geomunion';
 4   DROP FUNCTION public.geomunion(geometry, geometry);
       public       postgres    false    3    993    993    993            �           1255    16962    geosnoop(geometry)    FUNCTION     t   CREATE FUNCTION geosnoop(geometry) RETURNS geometry
    LANGUAGE c STRICT
    AS '$libdir/postgis-1.4', 'GEOSnoop';
 )   DROP FUNCTION public.geosnoop(geometry);
       public       postgres    false    3    993    993            Z           1255    16789    get_proj4_from_srid(integer)    FUNCTION     �   CREATE FUNCTION get_proj4_from_srid(integer) RETURNS text
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
BEGIN
	RETURN proj4text::text FROM spatial_ref_sys WHERE srid= $1;
END;
$_$;
 3   DROP FUNCTION public.get_proj4_from_srid(integer);
       public       postgres    false    3    1031            �            1255    16583    getbbox(geometry)    FUNCTION     �   CREATE FUNCTION getbbox(geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_BOX2DFLOAT4';
 (   DROP FUNCTION public.getbbox(geometry);
       public       postgres    false    993    3    1005            �            1255    16582    getsrid(geometry)    FUNCTION     �   CREATE FUNCTION getsrid(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_getSRID';
 (   DROP FUNCTION public.getsrid(geometry);
       public       postgres    false    3    993            �           1255    17168    gettransactionid()    FUNCTION     p   CREATE FUNCTION gettransactionid() RETURNS xid
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'getTransactionID';
 )   DROP FUNCTION public.gettransactionid();
       public       postgres    false    3            �            1255    16671    hasbbox(geometry)    FUNCTION     �   CREATE FUNCTION hasbbox(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_hasBBOX';
 (   DROP FUNCTION public.hasbbox(geometry);
       public       postgres    false    993    3            �            1255    16586    height(chip)    FUNCTION     }   CREATE FUNCTION height(chip) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getHeight';
 #   DROP FUNCTION public.height(chip);
       public       postgres    false    3    1002                       1255    17019     interiorringn(geometry, integer)    FUNCTION     �   CREATE FUNCTION interiorringn(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_interiorringn_polygon';
 7   DROP FUNCTION public.interiorringn(geometry, integer);
       public       postgres    false    993    3    993            �           1255    16868     intersection(geometry, geometry)    FUNCTION     �   CREATE FUNCTION intersection(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'intersection';
 7   DROP FUNCTION public.intersection(geometry, geometry);
       public       postgres    false    3    993    993    993            �           1255    16939    intersects(geometry, geometry)    FUNCTION     �   CREATE FUNCTION intersects(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'intersects';
 5   DROP FUNCTION public.intersects(geometry, geometry);
       public       postgres    false    3    993    993            *           1255    17037    isclosed(geometry)    FUNCTION     �   CREATE FUNCTION isclosed(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_isclosed_linestring';
 )   DROP FUNCTION public.isclosed(geometry);
       public       postgres    false    3    993            ,           1255    17039    isempty(geometry)    FUNCTION     �   CREATE FUNCTION isempty(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_isempty';
 (   DROP FUNCTION public.isempty(geometry);
       public       postgres    false    3    993            �           1255    16965    isring(geometry)    FUNCTION     y   CREATE FUNCTION isring(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'isring';
 '   DROP FUNCTION public.isring(geometry);
       public       postgres    false    3    993            �           1255    16969    issimple(geometry)    FUNCTION     }   CREATE FUNCTION issimple(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'issimple';
 )   DROP FUNCTION public.issimple(geometry);
       public       postgres    false    3    993            �           1255    16960    isvalid(geometry)    FUNCTION     {   CREATE FUNCTION isvalid(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'isvalid';
 (   DROP FUNCTION public.isvalid(geometry);
       public       postgres    false    3    993            �            1255    16611    length(geometry)    FUNCTION     �   CREATE FUNCTION length(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length_linestring';
 '   DROP FUNCTION public.length(geometry);
       public       postgres    false    993    3            �            1255    16609    length2d(geometry)    FUNCTION     �   CREATE FUNCTION length2d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length2d_linestring';
 )   DROP FUNCTION public.length2d(geometry);
       public       postgres    false    993    3            �            1255    16617 %   length2d_spheroid(geometry, spheroid)    FUNCTION     �   CREATE FUNCTION length2d_spheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length2d_ellipsoid_linestring';
 <   DROP FUNCTION public.length2d_spheroid(geometry, spheroid);
       public       postgres    false    3    993    990            �            1255    16607    length3d(geometry)    FUNCTION     �   CREATE FUNCTION length3d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length_linestring';
 )   DROP FUNCTION public.length3d(geometry);
       public       postgres    false    993    3            �            1255    16613 %   length3d_spheroid(geometry, spheroid)    FUNCTION     �   CREATE FUNCTION length3d_spheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length_ellipsoid_linestring';
 <   DROP FUNCTION public.length3d_spheroid(geometry, spheroid);
       public       postgres    false    990    993    3            �            1255    16615 #   length_spheroid(geometry, spheroid)    FUNCTION     �   CREATE FUNCTION length_spheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length_ellipsoid_linestring';
 :   DROP FUNCTION public.length_spheroid(geometry, spheroid);
       public       postgres    false    990    993    3            �           1255    16858 2   line_interpolate_point(geometry, double precision)    FUNCTION     �   CREATE FUNCTION line_interpolate_point(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_line_interpolate_point';
 I   DROP FUNCTION public.line_interpolate_point(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16862 %   line_locate_point(geometry, geometry)    FUNCTION     �   CREATE FUNCTION line_locate_point(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_line_locate_point';
 <   DROP FUNCTION public.line_locate_point(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16860 <   line_substring(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION line_substring(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_line_substring';
 S   DROP FUNCTION public.line_substring(geometry, double precision, double precision);
       public       postgres    false    3    993    993                       1255    16706    linefrommultipoint(geometry)    FUNCTION     �   CREATE FUNCTION linefrommultipoint(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_line_from_mpoint';
 3   DROP FUNCTION public.linefrommultipoint(geometry);
       public       postgres    false    993    993    3            D           1255    17063    linefromtext(text)    FUNCTION     �   CREATE FUNCTION linefromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1)) = 'LINESTRING'
	THEN GeomFromText($1)
	ELSE NULL END
	$_$;
 )   DROP FUNCTION public.linefromtext(text);
       public       postgres    false    3    993            F           1255    17065    linefromtext(text, integer)    FUNCTION     �   CREATE FUNCTION linefromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1, $2)) = 'LINESTRING'
	THEN GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 2   DROP FUNCTION public.linefromtext(text, integer);
       public       postgres    false    993    3            u           1255    17112    linefromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION linefromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1, $2)) = 'LINESTRING'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 2   DROP FUNCTION public.linefromwkb(bytea, integer);
       public       postgres    false    993    3            w           1255    17114    linefromwkb(bytea)    FUNCTION     �   CREATE FUNCTION linefromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'LINESTRING'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 )   DROP FUNCTION public.linefromwkb(bytea);
       public       postgres    false    993    3            -           1255    16727    linemerge(geometry)    FUNCTION     �   CREATE FUNCTION linemerge(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'linemerge';
 *   DROP FUNCTION public.linemerge(geometry);
       public       postgres    false    3    993    993            H           1255    17067    linestringfromtext(text)    FUNCTION     �   CREATE FUNCTION linestringfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT LineFromText($1)$_$;
 /   DROP FUNCTION public.linestringfromtext(text);
       public       postgres    false    993    3            I           1255    17068 !   linestringfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION linestringfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT LineFromText($1, $2)$_$;
 8   DROP FUNCTION public.linestringfromtext(text, integer);
       public       postgres    false    993    3            y           1255    17116 !   linestringfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION linestringfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1, $2)) = 'LINESTRING'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 8   DROP FUNCTION public.linestringfromwkb(bytea, integer);
       public       postgres    false    3    993            {           1255    17118    linestringfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION linestringfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'LINESTRING'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 /   DROP FUNCTION public.linestringfromwkb(bytea);
       public       postgres    false    993    3            �           1255    16866 0   locate_along_measure(geometry, double precision)    FUNCTION     �   CREATE FUNCTION locate_along_measure(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT locate_between_measures($1, $2, $2) $_$;
 G   DROP FUNCTION public.locate_along_measure(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16864 E   locate_between_measures(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION locate_between_measures(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_locate_between_m';
 \   DROP FUNCTION public.locate_between_measures(geometry, double precision, double precision);
       public       postgres    false    3    993    993            �           1255    17160 <   lockrow(text, text, text, text, timestamp without time zone)    FUNCTION     c  CREATE FUNCTION lockrow(text, text, text, text, timestamp without time zone) RETURNS integer
    LANGUAGE plpgsql STRICT
    AS $_$ 
DECLARE
	myschema alias for $1;
	mytable alias for $2;
	myrid   alias for $3;
	authid alias for $4;
	expires alias for $5;
	ret int;
	mytoid oid;
	myrec RECORD;
	
BEGIN

	IF NOT LongTransactionsEnabled() THEN
		RAISE EXCEPTION 'Long transaction support disabled, use EnableLongTransaction() to enable.';
	END IF;

	EXECUTE 'DELETE FROM authorization_table WHERE expires < now()'; 

	SELECT c.oid INTO mytoid FROM pg_class c, pg_namespace n
		WHERE c.relname = mytable
		AND c.relnamespace = n.oid
		AND n.nspname = myschema;

	-- RAISE NOTICE 'toid: %', mytoid;

	FOR myrec IN SELECT * FROM authorization_table WHERE 
		toid = mytoid AND rid = myrid
	LOOP
		IF myrec.authid != authid THEN
			RETURN 0;
		ELSE
			RETURN 1;
		END IF;
	END LOOP;

	EXECUTE 'INSERT INTO authorization_table VALUES ('||
		quote_literal(mytoid::text)||','||quote_literal(myrid)||
		','||quote_literal(expires::text)||
		','||quote_literal(authid) ||')';

	GET DIAGNOSTICS ret = ROW_COUNT;

	RETURN ret;
END;
$_$;
 S   DROP FUNCTION public.lockrow(text, text, text, text, timestamp without time zone);
       public       postgres    false    3    1031            �           1255    17161    lockrow(text, text, text, text)    FUNCTION     �   CREATE FUNCTION lockrow(text, text, text, text) RETURNS integer
    LANGUAGE sql STRICT
    AS $_$ SELECT LockRow($1, $2, $3, $4, now()::timestamp+'1:00'); $_$;
 6   DROP FUNCTION public.lockrow(text, text, text, text);
       public       postgres    false    3            �           1255    17162    lockrow(text, text, text)    FUNCTION     �   CREATE FUNCTION lockrow(text, text, text) RETURNS integer
    LANGUAGE sql STRICT
    AS $_$ SELECT LockRow(current_schema(), $1, $2, $3, now()::timestamp+'1:00'); $_$;
 0   DROP FUNCTION public.lockrow(text, text, text);
       public       postgres    false    3            �           1255    17163 6   lockrow(text, text, text, timestamp without time zone)    FUNCTION     �   CREATE FUNCTION lockrow(text, text, text, timestamp without time zone) RETURNS integer
    LANGUAGE sql STRICT
    AS $_$ SELECT LockRow(current_schema(), $1, $2, $3, $4); $_$;
 M   DROP FUNCTION public.lockrow(text, text, text, timestamp without time zone);
       public       postgres    false    3            �           1255    17170    longtransactionsenabled()    FUNCTION     �   CREATE FUNCTION longtransactionsenabled() RETURNS boolean
    LANGUAGE plpgsql
    AS $$ 
DECLARE
	rec RECORD;
BEGIN
	FOR rec IN SELECT oid FROM pg_class WHERE relname = 'authorized_tables'
	LOOP
		return 't';
	END LOOP;
	return 'f';
END;
$$;
 0   DROP FUNCTION public.longtransactionsenabled();
       public       postgres    false    3    1031            �            1255    16551    lwgeom_gist_compress(internal)    FUNCTION     �   CREATE FUNCTION lwgeom_gist_compress(internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_compress';
 5   DROP FUNCTION public.lwgeom_gist_compress(internal);
       public       postgres    false    3            �            1255    16550 3   lwgeom_gist_consistent(internal, geometry, integer)    FUNCTION     �   CREATE FUNCTION lwgeom_gist_consistent(internal, geometry, integer) RETURNS boolean
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_consistent';
 J   DROP FUNCTION public.lwgeom_gist_consistent(internal, geometry, integer);
       public       postgres    false    3    993            �            1255    16556     lwgeom_gist_decompress(internal)    FUNCTION     �   CREATE FUNCTION lwgeom_gist_decompress(internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_decompress';
 7   DROP FUNCTION public.lwgeom_gist_decompress(internal);
       public       postgres    false    3            �            1255    16552 1   lwgeom_gist_penalty(internal, internal, internal)    FUNCTION     �   CREATE FUNCTION lwgeom_gist_penalty(internal, internal, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_penalty';
 H   DROP FUNCTION public.lwgeom_gist_penalty(internal, internal, internal);
       public       postgres    false    3            �            1255    16553 )   lwgeom_gist_picksplit(internal, internal)    FUNCTION     �   CREATE FUNCTION lwgeom_gist_picksplit(internal, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_picksplit';
 @   DROP FUNCTION public.lwgeom_gist_picksplit(internal, internal);
       public       postgres    false    3            �            1255    16555 (   lwgeom_gist_same(box2d, box2d, internal)    FUNCTION     �   CREATE FUNCTION lwgeom_gist_same(box2d, box2d, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_same';
 ?   DROP FUNCTION public.lwgeom_gist_same(box2d, box2d, internal);
       public       postgres    false    3    1005    1005            �            1255    16554 "   lwgeom_gist_union(bytea, internal)    FUNCTION     �   CREATE FUNCTION lwgeom_gist_union(bytea, internal) RETURNS internal
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_union';
 9   DROP FUNCTION public.lwgeom_gist_union(bytea, internal);
       public       postgres    false    3            $           1255    17031    m(geometry)    FUNCTION     �   CREATE FUNCTION m(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_m_point';
 "   DROP FUNCTION public.m(geometry);
       public       postgres    false    993    3                       1255    16699    makebox2d(geometry, geometry)    FUNCTION     �   CREATE FUNCTION makebox2d(geometry, geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_construct';
 4   DROP FUNCTION public.makebox2d(geometry, geometry);
       public       postgres    false    993    3    1005    993                       1255    16701    makebox3d(geometry, geometry)    FUNCTION     �   CREATE FUNCTION makebox3d(geometry, geometry) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_construct';
 4   DROP FUNCTION public.makebox3d(geometry, geometry);
       public       postgres    false    3    996    993    993                       1255    16708    makeline(geometry, geometry)    FUNCTION     �   CREATE FUNCTION makeline(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makeline';
 3   DROP FUNCTION public.makeline(geometry, geometry);
       public       postgres    false    993    3    993    993                       1255    16703    makeline_garray(geometry[])    FUNCTION     �   CREATE FUNCTION makeline_garray(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makeline_garray';
 2   DROP FUNCTION public.makeline_garray(geometry[]);
       public       postgres    false    995    993    3            	           1255    16691 -   makepoint(double precision, double precision)    FUNCTION     �   CREATE FUNCTION makepoint(double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoint';
 D   DROP FUNCTION public.makepoint(double precision, double precision);
       public       postgres    false    993    3                       1255    16693 ?   makepoint(double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION makepoint(double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoint';
 V   DROP FUNCTION public.makepoint(double precision, double precision, double precision);
       public       postgres    false    993    3                       1255    16695 Q   makepoint(double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION makepoint(double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoint';
 h   DROP FUNCTION public.makepoint(double precision, double precision, double precision, double precision);
       public       postgres    false    3    993                       1255    16697 @   makepointm(double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION makepointm(double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoint3dm';
 W   DROP FUNCTION public.makepointm(double precision, double precision, double precision);
       public       postgres    false    3    993            $           1255    16718 !   makepolygon(geometry, geometry[])    FUNCTION     �   CREATE FUNCTION makepolygon(geometry, geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoly';
 8   DROP FUNCTION public.makepolygon(geometry, geometry[]);
       public       postgres    false    993    3    993    995            &           1255    16720    makepolygon(geometry)    FUNCTION     �   CREATE FUNCTION makepolygon(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoly';
 ,   DROP FUNCTION public.makepolygon(geometry);
       public       postgres    false    3    993    993            �            1255    16635     max_distance(geometry, geometry)    FUNCTION     �   CREATE FUNCTION max_distance(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_maxdistance2d_linestring';
 7   DROP FUNCTION public.max_distance(geometry, geometry);
       public       postgres    false    993    3    993            �            1255    16599    mem_size(geometry)    FUNCTION     �   CREATE FUNCTION mem_size(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_mem_size';
 )   DROP FUNCTION public.mem_size(geometry);
       public       postgres    false    3    993            R           1255    17077    mlinefromtext(text, integer)    FUNCTION     �   CREATE FUNCTION mlinefromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(GeomFromText($1, $2)) = 'MULTILINESTRING'
	THEN GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 3   DROP FUNCTION public.mlinefromtext(text, integer);
       public       postgres    false    993    3            T           1255    17079    mlinefromtext(text)    FUNCTION     �   CREATE FUNCTION mlinefromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1)) = 'MULTILINESTRING'
	THEN GeomFromText($1)
	ELSE NULL END
	$_$;
 *   DROP FUNCTION public.mlinefromtext(text);
       public       postgres    false    3    993            �           1255    17139    mlinefromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION mlinefromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1, $2)) = 'MULTILINESTRING'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 3   DROP FUNCTION public.mlinefromwkb(bytea, integer);
       public       postgres    false    3    993            �           1255    17141    mlinefromwkb(bytea)    FUNCTION     �   CREATE FUNCTION mlinefromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'MULTILINESTRING'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 *   DROP FUNCTION public.mlinefromwkb(bytea);
       public       postgres    false    3    993            Z           1255    17085    mpointfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION mpointfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1,$2)) = 'MULTIPOINT'
	THEN GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 4   DROP FUNCTION public.mpointfromtext(text, integer);
       public       postgres    false    993    3            \           1255    17087    mpointfromtext(text)    FUNCTION     �   CREATE FUNCTION mpointfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1)) = 'MULTIPOINT'
	THEN GeomFromText($1)
	ELSE NULL END
	$_$;
 +   DROP FUNCTION public.mpointfromtext(text);
       public       postgres    false    993    3            �           1255    17128    mpointfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION mpointfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1,$2)) = 'MULTIPOINT'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 4   DROP FUNCTION public.mpointfromwkb(bytea, integer);
       public       postgres    false    3    993            �           1255    17130    mpointfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION mpointfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'MULTIPOINT'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 +   DROP FUNCTION public.mpointfromwkb(bytea);
       public       postgres    false    993    3            a           1255    17092    mpolyfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION mpolyfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1, $2)) = 'MULTIPOLYGON'
	THEN GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 3   DROP FUNCTION public.mpolyfromtext(text, integer);
       public       postgres    false    3    993            c           1255    17094    mpolyfromtext(text)    FUNCTION     �   CREATE FUNCTION mpolyfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1)) = 'MULTIPOLYGON'
	THEN GeomFromText($1)
	ELSE NULL END
	$_$;
 *   DROP FUNCTION public.mpolyfromtext(text);
       public       postgres    false    3    993            �           1255    17143    mpolyfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION mpolyfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1, $2)) = 'MULTIPOLYGON'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 3   DROP FUNCTION public.mpolyfromwkb(bytea, integer);
       public       postgres    false    3    993            �           1255    17145    mpolyfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION mpolyfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'MULTIPOLYGON'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 *   DROP FUNCTION public.mpolyfromwkb(bytea);
       public       postgres    false    3    993            �            1255    16653    multi(geometry)    FUNCTION     �   CREATE FUNCTION multi(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_multi';
 &   DROP FUNCTION public.multi(geometry);
       public       postgres    false    993    3    993            �           1255    17136     multilinefromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION multilinefromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1, $2)) = 'MULTILINESTRING'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 7   DROP FUNCTION public.multilinefromwkb(bytea, integer);
       public       postgres    false    3    993            �           1255    17137    multilinefromwkb(bytea)    FUNCTION     �   CREATE FUNCTION multilinefromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'MULTILINESTRING'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 .   DROP FUNCTION public.multilinefromwkb(bytea);
       public       postgres    false    3    993            V           1255    17081    multilinestringfromtext(text)    FUNCTION     �   CREATE FUNCTION multilinestringfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_MLineFromText($1)$_$;
 4   DROP FUNCTION public.multilinestringfromtext(text);
       public       postgres    false    993    3            X           1255    17083 &   multilinestringfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION multilinestringfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT MLineFromText($1, $2)$_$;
 =   DROP FUNCTION public.multilinestringfromtext(text, integer);
       public       postgres    false    993    3            ^           1255    17089 !   multipointfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION multipointfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT MPointFromText($1, $2)$_$;
 8   DROP FUNCTION public.multipointfromtext(text, integer);
       public       postgres    false    3    993            _           1255    17090    multipointfromtext(text)    FUNCTION     �   CREATE FUNCTION multipointfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT MPointFromText($1)$_$;
 /   DROP FUNCTION public.multipointfromtext(text);
       public       postgres    false    993    3            �           1255    17132 !   multipointfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION multipointfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1,$2)) = 'MULTIPOINT'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 8   DROP FUNCTION public.multipointfromwkb(bytea, integer);
       public       postgres    false    993    3            �           1255    17134    multipointfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION multipointfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'MULTIPOINT'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 /   DROP FUNCTION public.multipointfromwkb(bytea);
       public       postgres    false    3    993            �           1255    17147     multipolyfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION multipolyfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1, $2)) = 'MULTIPOLYGON'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 7   DROP FUNCTION public.multipolyfromwkb(bytea, integer);
       public       postgres    false    993    3            �           1255    17149    multipolyfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION multipolyfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'MULTIPOLYGON'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 .   DROP FUNCTION public.multipolyfromwkb(bytea);
       public       postgres    false    3    993            e           1255    17096 #   multipolygonfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION multipolygonfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT MPolyFromText($1, $2)$_$;
 :   DROP FUNCTION public.multipolygonfromtext(text, integer);
       public       postgres    false    3    993            g           1255    17098    multipolygonfromtext(text)    FUNCTION     �   CREATE FUNCTION multipolygonfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT MPolyFromText($1)$_$;
 1   DROP FUNCTION public.multipolygonfromtext(text);
       public       postgres    false    993    3            �            1255    16673    ndims(geometry)    FUNCTION        CREATE FUNCTION ndims(geometry) RETURNS smallint
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_ndims';
 &   DROP FUNCTION public.ndims(geometry);
       public       postgres    false    3    993            �            1255    16667    noop(geometry)    FUNCTION     s   CREATE FUNCTION noop(geometry) RETURNS geometry
    LANGUAGE c STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_noop';
 %   DROP FUNCTION public.noop(geometry);
       public       postgres    false    3    993    993            �            1255    16603    npoints(geometry)    FUNCTION     �   CREATE FUNCTION npoints(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_npoints';
 (   DROP FUNCTION public.npoints(geometry);
       public       postgres    false    3    993            �            1255    16605    nrings(geometry)    FUNCTION     �   CREATE FUNCTION nrings(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_nrings';
 '   DROP FUNCTION public.nrings(geometry);
       public       postgres    false    993    3                       1255    17007    numgeometries(geometry)    FUNCTION     �   CREATE FUNCTION numgeometries(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_numgeometries_collection';
 .   DROP FUNCTION public.numgeometries(geometry);
       public       postgres    false    3    993                       1255    17017    numinteriorring(geometry)    FUNCTION     �   CREATE FUNCTION numinteriorring(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_numinteriorrings_polygon';
 0   DROP FUNCTION public.numinteriorring(geometry);
       public       postgres    false    3    993                       1255    17015    numinteriorrings(geometry)    FUNCTION     �   CREATE FUNCTION numinteriorrings(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_numinteriorrings_polygon';
 1   DROP FUNCTION public.numinteriorrings(geometry);
       public       postgres    false    3    993            
           1255    17005    numpoints(geometry)    FUNCTION     �   CREATE FUNCTION numpoints(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_numpoints_linestring';
 *   DROP FUNCTION public.numpoints(geometry);
       public       postgres    false    3    993            �           1255    16957    overlaps(geometry, geometry)    FUNCTION     �   CREATE FUNCTION "overlaps"(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'overlaps';
 5   DROP FUNCTION public."overlaps"(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16623    perimeter(geometry)    FUNCTION     �   CREATE FUNCTION perimeter(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_perimeter_poly';
 *   DROP FUNCTION public.perimeter(geometry);
       public       postgres    false    993    3            �            1255    16621    perimeter2d(geometry)    FUNCTION     �   CREATE FUNCTION perimeter2d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_perimeter2d_poly';
 ,   DROP FUNCTION public.perimeter2d(geometry);
       public       postgres    false    3    993            �            1255    16619    perimeter3d(geometry)    FUNCTION     �   CREATE FUNCTION perimeter3d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_perimeter_poly';
 ,   DROP FUNCTION public.perimeter3d(geometry);
       public       postgres    false    3    993            �           1255    16909 %   pgis_geometry_accum_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_accum_finalfn(pgis_abs) RETURNS geometry[]
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'pgis_geometry_accum_finalfn';
 <   DROP FUNCTION public.pgis_geometry_accum_finalfn(pgis_abs);
       public       postgres    false    3    995    1016            �           1255    16908 /   pgis_geometry_accum_transfn(pgis_abs, geometry)    FUNCTION     �   CREATE FUNCTION pgis_geometry_accum_transfn(pgis_abs, geometry) RETURNS pgis_abs
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'pgis_geometry_accum_transfn';
 F   DROP FUNCTION public.pgis_geometry_accum_transfn(pgis_abs, geometry);
       public       postgres    false    3    1016    1016    993            �           1255    16911 '   pgis_geometry_collect_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_collect_finalfn(pgis_abs) RETURNS geometry
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'pgis_geometry_collect_finalfn';
 >   DROP FUNCTION public.pgis_geometry_collect_finalfn(pgis_abs);
       public       postgres    false    3    993    1016            �           1255    16913 (   pgis_geometry_makeline_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_makeline_finalfn(pgis_abs) RETURNS geometry
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'pgis_geometry_makeline_finalfn';
 ?   DROP FUNCTION public.pgis_geometry_makeline_finalfn(pgis_abs);
       public       postgres    false    3    993    1016            �           1255    16912 *   pgis_geometry_polygonize_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_polygonize_finalfn(pgis_abs) RETURNS geometry
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'pgis_geometry_polygonize_finalfn';
 A   DROP FUNCTION public.pgis_geometry_polygonize_finalfn(pgis_abs);
       public       postgres    false    3    993    1016            �           1255    16910 %   pgis_geometry_union_finalfn(pgis_abs)    FUNCTION     �   CREATE FUNCTION pgis_geometry_union_finalfn(pgis_abs) RETURNS geometry
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'pgis_geometry_union_finalfn';
 <   DROP FUNCTION public.pgis_geometry_union_finalfn(pgis_abs);
       public       postgres    false    3    993    1016            �            1255    16637 S   point_inside_circle(geometry, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION point_inside_circle(geometry, double precision, double precision, double precision) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_inside_circle_point';
 j   DROP FUNCTION public.point_inside_circle(geometry, double precision, double precision, double precision);
       public       postgres    false    993    3            @           1255    17059    pointfromtext(text)    FUNCTION     �   CREATE FUNCTION pointfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1)) = 'POINT'
	THEN GeomFromText($1)
	ELSE NULL END
	$_$;
 *   DROP FUNCTION public.pointfromtext(text);
       public       postgres    false    3    993            B           1255    17061    pointfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION pointfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1, $2)) = 'POINT'
	THEN GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 3   DROP FUNCTION public.pointfromtext(text, integer);
       public       postgres    false    3    993            q           1255    17108    pointfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION pointfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1, $2)) = 'POINT'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 3   DROP FUNCTION public.pointfromwkb(bytea, integer);
       public       postgres    false    3    993            s           1255    17110    pointfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION pointfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'POINT'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 *   DROP FUNCTION public.pointfromwkb(bytea);
       public       postgres    false    3    993                       1255    17023    pointn(geometry, integer)    FUNCTION     �   CREATE FUNCTION pointn(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_pointn_linestring';
 0   DROP FUNCTION public.pointn(geometry, integer);
       public       postgres    false    3    993    993            �           1255    16967    pointonsurface(geometry)    FUNCTION     �   CREATE FUNCTION pointonsurface(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'pointonsurface';
 /   DROP FUNCTION public.pointonsurface(geometry);
       public       postgres    false    3    993    993            J           1255    17069    polyfromtext(text)    FUNCTION     �   CREATE FUNCTION polyfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1)) = 'POLYGON'
	THEN GeomFromText($1)
	ELSE NULL END
	$_$;
 )   DROP FUNCTION public.polyfromtext(text);
       public       postgres    false    993    3            L           1255    17071    polyfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION polyfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1, $2)) = 'POLYGON'
	THEN GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 2   DROP FUNCTION public.polyfromtext(text, integer);
       public       postgres    false    3    993            }           1255    17120    polyfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION polyfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1, $2)) = 'POLYGON'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 2   DROP FUNCTION public.polyfromwkb(bytea, integer);
       public       postgres    false    993    3                       1255    17122    polyfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION polyfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'POLYGON'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 )   DROP FUNCTION public.polyfromwkb(bytea);
       public       postgres    false    993    3            N           1255    17073    polygonfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION polygonfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT PolyFromText($1, $2)$_$;
 5   DROP FUNCTION public.polygonfromtext(text, integer);
       public       postgres    false    3    993            P           1255    17075    polygonfromtext(text)    FUNCTION        CREATE FUNCTION polygonfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT PolyFromText($1)$_$;
 ,   DROP FUNCTION public.polygonfromtext(text);
       public       postgres    false    3    993            �           1255    17124    polygonfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION polygonfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1,$2)) = 'POLYGON'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 5   DROP FUNCTION public.polygonfromwkb(bytea, integer);
       public       postgres    false    3    993            �           1255    17126    polygonfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION polygonfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'POLYGON'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 ,   DROP FUNCTION public.polygonfromwkb(bytea);
       public       postgres    false    3    993            *           1255    16724    polygonize_garray(geometry[])    FUNCTION     �   CREATE FUNCTION polygonize_garray(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'polygonize_garray';
 4   DROP FUNCTION public.polygonize_garray(geometry[]);
       public       postgres    false    3    995    993            D           1255    16772    populate_geometry_columns()    FUNCTION     Q  CREATE FUNCTION populate_geometry_columns() RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
	inserted    integer;
	oldcount    integer;
	probed      integer;
	stale       integer;
	gcs         RECORD;
	gc          RECORD;
	gsrid       integer;
	gndims      integer;
	gtype       text;
	query       text;
	gc_is_valid boolean;
	
BEGIN
	SELECT count(*) INTO oldcount FROM geometry_columns;
	inserted := 0;

	EXECUTE 'TRUNCATE geometry_columns';

	-- Count the number of geometry columns in all tables and views
	SELECT count(DISTINCT c.oid) INTO probed
	FROM pg_class c, 
	     pg_attribute a, 
	     pg_type t, 
	     pg_namespace n
	WHERE (c.relkind = 'r' OR c.relkind = 'v')
	AND t.typname = 'geometry'
	AND a.attisdropped = false
	AND a.atttypid = t.oid
	AND a.attrelid = c.oid
	AND c.relnamespace = n.oid
	AND n.nspname NOT ILIKE 'pg_temp%';

	-- Iterate through all non-dropped geometry columns
	RAISE DEBUG 'Processing Tables.....';

	FOR gcs IN 
	SELECT DISTINCT ON (c.oid) c.oid, n.nspname, c.relname
	    FROM pg_class c, 
	         pg_attribute a, 
	         pg_type t, 
	         pg_namespace n
	    WHERE c.relkind = 'r'
	    AND t.typname = 'geometry'
	    AND a.attisdropped = false
	    AND a.atttypid = t.oid
	    AND a.attrelid = c.oid
	    AND c.relnamespace = n.oid
	    AND n.nspname NOT ILIKE 'pg_temp%'
	LOOP
	
	inserted := inserted + populate_geometry_columns(gcs.oid);
	END LOOP;
	
	-- Add views to geometry columns table
	RAISE DEBUG 'Processing Views.....';
	FOR gcs IN 
	SELECT DISTINCT ON (c.oid) c.oid, n.nspname, c.relname
	    FROM pg_class c, 
	         pg_attribute a, 
	         pg_type t, 
	         pg_namespace n
	    WHERE c.relkind = 'v'
	    AND t.typname = 'geometry'
	    AND a.attisdropped = false
	    AND a.atttypid = t.oid
	    AND a.attrelid = c.oid
	    AND c.relnamespace = n.oid
	LOOP            
	    
	inserted := inserted + populate_geometry_columns(gcs.oid);
	END LOOP;

	IF oldcount > inserted THEN
	stale = oldcount-inserted;
	ELSE
	stale = 0;
	END IF;

	RETURN 'probed:' ||probed|| ' inserted:'||inserted|| ' conflicts:'||probed-inserted|| ' deleted:'||stale;
END

$$;
 2   DROP FUNCTION public.populate_geometry_columns();
       public       postgres    false    3    1031            E           1255    16773    populate_geometry_columns(oid)    FUNCTION     �%  CREATE FUNCTION populate_geometry_columns(tbl_oid oid) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
	gcs         RECORD;
	gc          RECORD;
	gsrid       integer;
	gndims      integer;
	gtype       text;
	query       text;
	gc_is_valid boolean;
	inserted    integer;
	
BEGIN
	inserted := 0;
	
	-- Iterate through all geometry columns in this table
	FOR gcs IN 
	SELECT n.nspname, c.relname, a.attname
	    FROM pg_class c, 
	         pg_attribute a, 
	         pg_type t, 
	         pg_namespace n
	    WHERE c.relkind = 'r'
	    AND t.typname = 'geometry'
	    AND a.attisdropped = false
	    AND a.atttypid = t.oid
	    AND a.attrelid = c.oid
	    AND c.relnamespace = n.oid
	    AND n.nspname NOT ILIKE 'pg_temp%'
	    AND c.oid = tbl_oid
	LOOP
	
	RAISE DEBUG 'Processing table %.%.%', gcs.nspname, gcs.relname, gcs.attname;

	DELETE FROM geometry_columns 
	  WHERE f_table_schema = quote_ident(gcs.nspname) 
	  AND f_table_name = quote_ident(gcs.relname)
	  AND f_geometry_column = quote_ident(gcs.attname);
	
	gc_is_valid := true;
	
	-- Try to find srid check from system tables (pg_constraint)
	gsrid := 
	    (SELECT replace(replace(split_part(s.consrc, ' = ', 2), ')', ''), '(', '') 
	     FROM pg_class c, pg_namespace n, pg_attribute a, pg_constraint s 
	     WHERE n.nspname = gcs.nspname 
	     AND c.relname = gcs.relname 
	     AND a.attname = gcs.attname 
	     AND a.attrelid = c.oid
	     AND s.connamespace = n.oid
	     AND s.conrelid = c.oid
	     AND a.attnum = ANY (s.conkey)
	     AND s.consrc LIKE '%srid(% = %');
	IF (gsrid IS NULL) THEN 
	    -- Try to find srid from the geometry itself
	    EXECUTE 'SELECT public.srid(' || quote_ident(gcs.attname) || ') 
	             FROM ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' 
	             WHERE ' || quote_ident(gcs.attname) || ' IS NOT NULL LIMIT 1' 
	        INTO gc;
	    gsrid := gc.srid;
	    
	    -- Try to apply srid check to column
	    IF (gsrid IS NOT NULL) THEN
	        BEGIN
	            EXECUTE 'ALTER TABLE ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' 
	                     ADD CONSTRAINT ' || quote_ident('enforce_srid_' || gcs.attname) || ' 
	                     CHECK (srid(' || quote_ident(gcs.attname) || ') = ' || gsrid || ')';
	        EXCEPTION
	            WHEN check_violation THEN
	                RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not apply constraint CHECK (srid(%) = %)', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname), quote_ident(gcs.attname), gsrid;
	                gc_is_valid := false;
	        END;
	    END IF;
	END IF;
	
	-- Try to find ndims check from system tables (pg_constraint)
	gndims := 
	    (SELECT replace(split_part(s.consrc, ' = ', 2), ')', '') 
	     FROM pg_class c, pg_namespace n, pg_attribute a, pg_constraint s 
	     WHERE n.nspname = gcs.nspname 
	     AND c.relname = gcs.relname 
	     AND a.attname = gcs.attname 
	     AND a.attrelid = c.oid
	     AND s.connamespace = n.oid
	     AND s.conrelid = c.oid
	     AND a.attnum = ANY (s.conkey)
	     AND s.consrc LIKE '%ndims(% = %');
	IF (gndims IS NULL) THEN
	    -- Try to find ndims from the geometry itself
	    EXECUTE 'SELECT public.ndims(' || quote_ident(gcs.attname) || ') 
	             FROM ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' 
	             WHERE ' || quote_ident(gcs.attname) || ' IS NOT NULL LIMIT 1' 
	        INTO gc;
	    gndims := gc.ndims;
	    
	    -- Try to apply ndims check to column
	    IF (gndims IS NOT NULL) THEN
	        BEGIN
	            EXECUTE 'ALTER TABLE ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' 
	                     ADD CONSTRAINT ' || quote_ident('enforce_dims_' || gcs.attname) || ' 
	                     CHECK (ndims(' || quote_ident(gcs.attname) || ') = '||gndims||')';
	        EXCEPTION
	            WHEN check_violation THEN
	                RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not apply constraint CHECK (ndims(%) = %)', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname), quote_ident(gcs.attname), gndims;
	                gc_is_valid := false;
	        END;
	    END IF;
	END IF;
	
	-- Try to find geotype check from system tables (pg_constraint)
	gtype := 
	    (SELECT replace(split_part(s.consrc, '''', 2), ')', '') 
	     FROM pg_class c, pg_namespace n, pg_attribute a, pg_constraint s 
	     WHERE n.nspname = gcs.nspname 
	     AND c.relname = gcs.relname 
	     AND a.attname = gcs.attname 
	     AND a.attrelid = c.oid
	     AND s.connamespace = n.oid
	     AND s.conrelid = c.oid
	     AND a.attnum = ANY (s.conkey)
	     AND s.consrc LIKE '%geometrytype(% = %');
	IF (gtype IS NULL) THEN
	    -- Try to find geotype from the geometry itself
	    EXECUTE 'SELECT public.geometrytype(' || quote_ident(gcs.attname) || ') 
	             FROM ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' 
	             WHERE ' || quote_ident(gcs.attname) || ' IS NOT NULL LIMIT 1' 
	        INTO gc;
	    gtype := gc.geometrytype;
	    --IF (gtype IS NULL) THEN
	    --    gtype := 'GEOMETRY';
	    --END IF;
	    
	    -- Try to apply geometrytype check to column
	    IF (gtype IS NOT NULL) THEN
	        BEGIN
	            EXECUTE 'ALTER TABLE ONLY ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' 
	            ADD CONSTRAINT ' || quote_ident('enforce_geotype_' || gcs.attname) || ' 
	            CHECK ((geometrytype(' || quote_ident(gcs.attname) || ') = ' || quote_literal(gtype) || ') OR (' || quote_ident(gcs.attname) || ' IS NULL))';
	        EXCEPTION
	            WHEN check_violation THEN
	                -- No geometry check can be applied. This column contains a number of geometry types.
	                RAISE WARNING 'Could not add geometry type check (%) to table column: %.%.%', gtype, quote_ident(gcs.nspname),quote_ident(gcs.relname),quote_ident(gcs.attname);
	        END;
	    END IF;
	END IF;
	        
	IF (gsrid IS NULL) THEN             
	    RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not determine the srid', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname);
	ELSIF (gndims IS NULL) THEN
	    RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not determine the number of dimensions', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname);
	ELSIF (gtype IS NULL) THEN
	    RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not determine the geometry type', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname);
	ELSE
	    -- Only insert into geometry_columns if table constraints could be applied.
	    IF (gc_is_valid) THEN
	        INSERT INTO geometry_columns (f_table_catalog,f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, type) 
	        VALUES ('', gcs.nspname, gcs.relname, gcs.attname, gndims, gsrid, gtype);
	        inserted := inserted + 1;
	    END IF;
	END IF;
	END LOOP;

	-- Add views to geometry columns table
	FOR gcs IN 
	SELECT n.nspname, c.relname, a.attname
	    FROM pg_class c, 
	         pg_attribute a, 
	         pg_type t, 
	         pg_namespace n
	    WHERE c.relkind = 'v'
	    AND t.typname = 'geometry'
	    AND a.attisdropped = false
	    AND a.atttypid = t.oid
	    AND a.attrelid = c.oid
	    AND c.relnamespace = n.oid
	    AND n.nspname NOT ILIKE 'pg_temp%'
	    AND c.oid = tbl_oid
	LOOP            
	    RAISE DEBUG 'Processing view %.%.%', gcs.nspname, gcs.relname, gcs.attname;

	    EXECUTE 'SELECT public.ndims(' || quote_ident(gcs.attname) || ') 
	             FROM ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' 
	             WHERE ' || quote_ident(gcs.attname) || ' IS NOT NULL LIMIT 1' 
	        INTO gc;
	    gndims := gc.ndims;
	    
	    EXECUTE 'SELECT public.srid(' || quote_ident(gcs.attname) || ') 
	             FROM ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' 
	             WHERE ' || quote_ident(gcs.attname) || ' IS NOT NULL LIMIT 1' 
	        INTO gc;
	    gsrid := gc.srid;
	    
	    EXECUTE 'SELECT public.geometrytype(' || quote_ident(gcs.attname) || ') 
	             FROM ' || quote_ident(gcs.nspname) || '.' || quote_ident(gcs.relname) || ' 
	             WHERE ' || quote_ident(gcs.attname) || ' IS NOT NULL LIMIT 1' 
	        INTO gc;
	    gtype := gc.geometrytype;
	    
	    IF (gndims IS NULL) THEN
	        RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not determine ndims', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname);
	    ELSIF (gsrid IS NULL) THEN
	        RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not determine srid', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname);
	    ELSIF (gtype IS NULL) THEN
	        RAISE WARNING 'Not inserting ''%'' in ''%.%'' into geometry_columns: could not determine gtype', quote_ident(gcs.attname), quote_ident(gcs.nspname), quote_ident(gcs.relname);
	    ELSE
	        query := 'INSERT INTO geometry_columns (f_table_catalog,f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, type) ' ||
	                 'VALUES ('''', ' || quote_literal(gcs.nspname) || ',' || quote_literal(gcs.relname) || ',' || quote_literal(gcs.attname) || ',' || gndims || ',' || gsrid || ',' || quote_literal(gtype) || ')';
	        EXECUTE query;
	        inserted := inserted + 1;
	    END IF;
	END LOOP;
	
	RETURN inserted;
END

$$;
 =   DROP FUNCTION public.populate_geometry_columns(tbl_oid oid);
       public       postgres    false    3    1031            b           1255    16802    postgis_full_version()    FUNCTION        CREATE FUNCTION postgis_full_version() RETURNS text
    LANGUAGE plpgsql IMMUTABLE
    AS $$ 
DECLARE
	libver text;
	projver text;
	geosver text;
	usestats bool;
	dbproc text;
	relproc text;
	fullver text;
BEGIN
	SELECT postgis_lib_version() INTO libver;
	SELECT postgis_proj_version() INTO projver;
	SELECT postgis_geos_version() INTO geosver;
	SELECT postgis_uses_stats() INTO usestats;
	SELECT postgis_scripts_installed() INTO dbproc;
	SELECT postgis_scripts_released() INTO relproc;

	fullver = 'POSTGIS="' || libver || '"';

	IF  geosver IS NOT NULL THEN
		fullver = fullver || ' GEOS="' || geosver || '"';
	END IF;

	IF  projver IS NOT NULL THEN
		fullver = fullver || ' PROJ="' || projver || '"';
	END IF;

	IF usestats THEN
		fullver = fullver || ' USE_STATS';
	END IF;

	-- fullver = fullver || ' DBPROC="' || dbproc || '"';
	-- fullver = fullver || ' RELPROC="' || relproc || '"';

	IF dbproc != relproc THEN
		fullver = fullver || ' (procs from ' || dbproc || ' need upgrade)';
	END IF;

	RETURN fullver;
END
$$;
 -   DROP FUNCTION public.postgis_full_version();
       public       postgres    false    3    1031            K           1255    16799    postgis_geos_version()    FUNCTION     �   CREATE FUNCTION postgis_geos_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'postgis_geos_version';
 -   DROP FUNCTION public.postgis_geos_version();
       public       postgres    false    3            w            1255    16512 7   postgis_gist_joinsel(internal, oid, internal, smallint)    FUNCTION     �   CREATE FUNCTION postgis_gist_joinsel(internal, oid, internal, smallint) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_joinsel';
 N   DROP FUNCTION public.postgis_gist_joinsel(internal, oid, internal, smallint);
       public       postgres    false    3            u            1255    16510 2   postgis_gist_sel(internal, oid, internal, integer)    FUNCTION     �   CREATE FUNCTION postgis_gist_sel(internal, oid, internal, integer) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_sel';
 I   DROP FUNCTION public.postgis_gist_sel(internal, oid, internal, integer);
       public       postgres    false    3            M           1255    16801    postgis_lib_build_date()    FUNCTION     �   CREATE FUNCTION postgis_lib_build_date() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'postgis_lib_build_date';
 /   DROP FUNCTION public.postgis_lib_build_date();
       public       postgres    false    3            a           1255    16796    postgis_lib_version()    FUNCTION     �   CREATE FUNCTION postgis_lib_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'postgis_lib_version';
 ,   DROP FUNCTION public.postgis_lib_version();
       public       postgres    false    3            _           1255    16794    postgis_proj_version()    FUNCTION     �   CREATE FUNCTION postgis_proj_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'postgis_proj_version';
 -   DROP FUNCTION public.postgis_proj_version();
       public       postgres    false    3            L           1255    16800    postgis_scripts_build_date()    FUNCTION     �   CREATE FUNCTION postgis_scripts_build_date() RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $$SELECT '2009-10-23 21:57:12'::text AS version$$;
 3   DROP FUNCTION public.postgis_scripts_build_date();
       public       postgres    false    3            `           1255    16795    postgis_scripts_installed()    FUNCTION     �   CREATE FUNCTION postgis_scripts_installed() RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $$SELECT '1.4.0'::text AS version$$;
 2   DROP FUNCTION public.postgis_scripts_installed();
       public       postgres    false    3            B           1255    16797    postgis_scripts_released()    FUNCTION     �   CREATE FUNCTION postgis_scripts_released() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'postgis_scripts_released';
 1   DROP FUNCTION public.postgis_scripts_released();
       public       postgres    false    3            J           1255    16798    postgis_uses_stats()    FUNCTION     �   CREATE FUNCTION postgis_uses_stats() RETURNS boolean
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'postgis_uses_stats';
 +   DROP FUNCTION public.postgis_uses_stats();
       public       postgres    false    3            ^           1255    16793    postgis_version()    FUNCTION     y   CREATE FUNCTION postgis_version() RETURNS text
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'postgis_version';
 (   DROP FUNCTION public.postgis_version();
       public       postgres    false    3            F           1255    16775    probe_geometry_columns()    FUNCTION     C	  CREATE FUNCTION probe_geometry_columns() RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
	inserted integer;
	oldcount integer;
	probed integer;
	stale integer;
BEGIN

	SELECT count(*) INTO oldcount FROM geometry_columns;

	SELECT count(*) INTO probed
		FROM pg_class c, pg_attribute a, pg_type t, 
			pg_namespace n,
			pg_constraint sridcheck, pg_constraint typecheck

		WHERE t.typname = 'geometry'
		AND a.atttypid = t.oid
		AND a.attrelid = c.oid
		AND c.relnamespace = n.oid
		AND sridcheck.connamespace = n.oid
		AND typecheck.connamespace = n.oid
		AND sridcheck.conrelid = c.oid
		AND sridcheck.consrc LIKE '(srid('||a.attname||') = %)'
		AND typecheck.conrelid = c.oid
		AND typecheck.consrc LIKE
		'((geometrytype('||a.attname||') = ''%''::text) OR (% IS NULL))'
		;

	INSERT INTO geometry_columns SELECT
		''::varchar as f_table_catalogue,
		n.nspname::varchar as f_table_schema,
		c.relname::varchar as f_table_name,
		a.attname::varchar as f_geometry_column,
		2 as coord_dimension,
		trim(both  ' =)' from 
			replace(replace(split_part(
				sridcheck.consrc, ' = ', 2), ')', ''), '(', ''))::integer AS srid,
		trim(both ' =)''' from substr(typecheck.consrc, 
			strpos(typecheck.consrc, '='),
			strpos(typecheck.consrc, '::')-
			strpos(typecheck.consrc, '=')
			))::varchar as type
		FROM pg_class c, pg_attribute a, pg_type t, 
			pg_namespace n,
			pg_constraint sridcheck, pg_constraint typecheck
		WHERE t.typname = 'geometry'
		AND a.atttypid = t.oid
		AND a.attrelid = c.oid
		AND c.relnamespace = n.oid
		AND sridcheck.connamespace = n.oid
		AND typecheck.connamespace = n.oid
		AND sridcheck.conrelid = c.oid
		AND sridcheck.consrc LIKE '(st_srid('||a.attname||') = %)'
		AND typecheck.conrelid = c.oid
		AND typecheck.consrc LIKE
		'((geometrytype('||a.attname||') = ''%''::text) OR (% IS NULL))'

	        AND NOT EXISTS (
	                SELECT oid FROM geometry_columns gc
	                WHERE c.relname::varchar = gc.f_table_name
	                AND n.nspname::varchar = gc.f_table_schema
	                AND a.attname::varchar = gc.f_geometry_column
	        );

	GET DIAGNOSTICS inserted = ROW_COUNT;

	IF oldcount > probed THEN
		stale = oldcount-probed;
	ELSE
		stale = 0;
	END IF;

	RETURN 'probed:'||probed::text||
		' inserted:'||inserted::text||
		' conflicts:'||(probed-inserted)::text||
		' stale:'||stale::text;
END

$$;
 /   DROP FUNCTION public.probe_geometry_columns();
       public       postgres    false    3    1031            �           1255    16928    relate(geometry, geometry)    FUNCTION     �   CREATE FUNCTION relate(geometry, geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'relate_full';
 1   DROP FUNCTION public.relate(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16930     relate(geometry, geometry, text)    FUNCTION     �   CREATE FUNCTION relate(geometry, geometry, text) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'relate_pattern';
 7   DROP FUNCTION public.relate(geometry, geometry, text);
       public       postgres    false    3    993    993                        1255    16714    removepoint(geometry, integer)    FUNCTION     �   CREATE FUNCTION removepoint(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_removepoint';
 5   DROP FUNCTION public.removepoint(geometry, integer);
       public       postgres    false    993    993    3            A           1255    16770 #   rename_geometry_table_constraints()    FUNCTION     �   CREATE FUNCTION rename_geometry_table_constraints() RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $$
SELECT 'rename_geometry_table_constraint() is obsoleted'::text
$$;
 :   DROP FUNCTION public.rename_geometry_table_constraints();
       public       postgres    false    3            �            1255    16663    reverse(geometry)    FUNCTION     �   CREATE FUNCTION reverse(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_reverse';
 (   DROP FUNCTION public.reverse(geometry);
       public       postgres    false    993    993    3            (            1255    16412 "   rotate(geometry, double precision)    FUNCTION     �   CREATE FUNCTION rotate(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT rotateZ($1, $2)$_$;
 9   DROP FUNCTION public.rotate(geometry, double precision);
       public       postgres    false    993    993    3            *            1255    16414 #   rotatex(geometry, double precision)    FUNCTION     �   CREATE FUNCTION rotatex(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1, 1, 0, 0, 0, cos($2), -sin($2), 0, sin($2), cos($2), 0, 0, 0)$_$;
 :   DROP FUNCTION public.rotatex(geometry, double precision);
       public       postgres    false    993    3    993            ,            1255    16416 #   rotatey(geometry, double precision)    FUNCTION     �   CREATE FUNCTION rotatey(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1,  cos($2), 0, sin($2),  0, 1, 0,  -sin($2), 0, cos($2), 0,  0, 0)$_$;
 :   DROP FUNCTION public.rotatey(geometry, double precision);
       public       postgres    false    3    993    993            &            1255    16410 #   rotatez(geometry, double precision)    FUNCTION     �   CREATE FUNCTION rotatez(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1,  cos($2), -sin($2), 0,  sin($2), cos($2), 0,  0, 0, 1,  0, 0, 0)$_$;
 :   DROP FUNCTION public.rotatez(geometry, double precision);
       public       postgres    false    3    993    993            2            1255    16422 E   scale(geometry, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION scale(geometry, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1,  $2, 0, 0,  0, $3, 0,  0, 0, $4,  0, 0, 0)$_$;
 \   DROP FUNCTION public.scale(geometry, double precision, double precision, double precision);
       public       postgres    false    993    3    993            4            1255    16424 3   scale(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION scale(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT scale($1, $2, $3, 1)$_$;
 J   DROP FUNCTION public.scale(geometry, double precision, double precision);
       public       postgres    false    993    3    993                        1255    17182 )   se_envelopesintersect(geometry, geometry)    FUNCTION     �   CREATE FUNCTION se_envelopesintersect(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ 
	SELECT $1 && $2
	$_$;
 @   DROP FUNCTION public.se_envelopesintersect(geometry, geometry);
       public       postgres    false    993    993    3            �           1255    17176    se_is3d(geometry)    FUNCTION       CREATE FUNCTION se_is3d(geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ 
	SELECT CASE ST_zmflag($1)
	       WHEN 0 THEN false
	       WHEN 1 THEN false
	       WHEN 2 THEN true
	       WHEN 3 THEN true
	       ELSE false
	   END
	$_$;
 (   DROP FUNCTION public.se_is3d(geometry);
       public       postgres    false    3    993            �           1255    17177    se_ismeasured(geometry)    FUNCTION       CREATE FUNCTION se_ismeasured(geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ 
	SELECT CASE ST_zmflag($1)
	       WHEN 0 THEN false
	       WHEN 1 THEN true
	       WHEN 2 THEN false
	       WHEN 3 THEN true
	       ELSE false
	   END
	$_$;
 .   DROP FUNCTION public.se_ismeasured(geometry);
       public       postgres    false    3    993            �           1255    17183 *   se_locatealong(geometry, double precision)    FUNCTION     �   CREATE FUNCTION se_locatealong(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT locate_between_measures($1, $2, $2) $_$;
 A   DROP FUNCTION public.se_locatealong(geometry, double precision);
       public       postgres    false    993    993    3            �           1255    17184 >   se_locatebetween(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION se_locatebetween(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_locate_between_m';
 U   DROP FUNCTION public.se_locatebetween(geometry, double precision, double precision);
       public       postgres    false    993    993    3            �           1255    17180    se_m(geometry)    FUNCTION     �   CREATE FUNCTION se_m(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_m_point';
 %   DROP FUNCTION public.se_m(geometry);
       public       postgres    false    3    993            �           1255    17179    se_z(geometry)    FUNCTION     �   CREATE FUNCTION se_z(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_z_point';
 %   DROP FUNCTION public.se_z(geometry);
       public       postgres    false    3    993            �           1255    16856 &   segmentize(geometry, double precision)    FUNCTION     �   CREATE FUNCTION segmentize(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_segmentize2d';
 =   DROP FUNCTION public.segmentize(geometry, double precision);
       public       postgres    false    3    993    993            �            1255    16597    setfactor(chip, real)    FUNCTION     �   CREATE FUNCTION setfactor(chip, real) RETURNS chip
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_setFactor';
 ,   DROP FUNCTION public.setfactor(chip, real);
       public       postgres    false    3    1002    1002            "           1255    16716 %   setpoint(geometry, integer, geometry)    FUNCTION     �   CREATE FUNCTION setpoint(geometry, integer, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_setpoint_linestring';
 <   DROP FUNCTION public.setpoint(geometry, integer, geometry);
       public       postgres    false    993    993    993    3            �            1255    16596    setsrid(chip, integer)    FUNCTION     �   CREATE FUNCTION setsrid(chip, integer) RETURNS chip
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_setSRID';
 -   DROP FUNCTION public.setsrid(chip, integer);
       public       postgres    false    3    1002    1002            0           1255    17043    setsrid(geometry, integer)    FUNCTION     �   CREATE FUNCTION setsrid(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_setSRID';
 1   DROP FUNCTION public.setsrid(geometry, integer);
       public       postgres    false    993    993    3            8            1255    16428    shift_longitude(geometry)    FUNCTION     �   CREATE FUNCTION shift_longitude(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_longitude_shift';
 0   DROP FUNCTION public.shift_longitude(geometry);
       public       postgres    false    993    3    993            ~           1255    16846 $   simplify(geometry, double precision)    FUNCTION     �   CREATE FUNCTION simplify(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_simplify2d';
 ;   DROP FUNCTION public.simplify(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16848 \   snaptogrid(geometry, double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION snaptogrid(geometry, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_snaptogrid';
 s   DROP FUNCTION public.snaptogrid(geometry, double precision, double precision, double precision, double precision);
       public       postgres    false    3    993    993            �           1255    16850 8   snaptogrid(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION snaptogrid(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT SnapToGrid($1, 0, 0, $2, $3)$_$;
 O   DROP FUNCTION public.snaptogrid(geometry, double precision, double precision);
       public       postgres    false    3    993    993            N           1255    16852 &   snaptogrid(geometry, double precision)    FUNCTION     �   CREATE FUNCTION snaptogrid(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT SnapToGrid($1, 0, 0, $2, $2)$_$;
 =   DROP FUNCTION public.snaptogrid(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16854 f   snaptogrid(geometry, geometry, double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION snaptogrid(geometry, geometry, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_snaptogrid_pointoff';
 }   DROP FUNCTION public.snaptogrid(geometry, geometry, double precision, double precision, double precision, double precision);
       public       postgres    false    3    993    993    993                        1255    16389    spheroid_in(cstring)    FUNCTION     �   CREATE FUNCTION spheroid_in(cstring) RETURNS spheroid
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'ellipsoid_in';
 +   DROP FUNCTION public.spheroid_in(cstring);
       public       postgres    false    990    3                        1255    16391    spheroid_out(spheroid)    FUNCTION     �   CREATE FUNCTION spheroid_out(spheroid) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'ellipsoid_out';
 -   DROP FUNCTION public.spheroid_out(spheroid);
       public       postgres    false    3    990            �            1255    16584 
   srid(chip)    FUNCTION     y   CREATE FUNCTION srid(chip) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getSRID';
 !   DROP FUNCTION public.srid(chip);
       public       postgres    false    3    1002            .           1255    17041    srid(geometry)    FUNCTION        CREATE FUNCTION srid(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_getSRID';
 %   DROP FUNCTION public.srid(geometry);
       public       postgres    false    993    3            �            1255    16579    st_addbbox(geometry)    FUNCTION     �   CREATE FUNCTION st_addbbox(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_addBBOX';
 +   DROP FUNCTION public.st_addbbox(geometry);
       public       postgres    false    993    993    3                       1255    16711    st_addpoint(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_addpoint(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_addpoint';
 6   DROP FUNCTION public.st_addpoint(geometry, geometry);
       public       postgres    false    993    3    993    993                       1255    16713 (   st_addpoint(geometry, geometry, integer)    FUNCTION     �   CREATE FUNCTION st_addpoint(geometry, geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_addpoint';
 ?   DROP FUNCTION public.st_addpoint(geometry, geometry, integer);
       public       postgres    false    993    3    993    993            #            1255    16407 �   st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision)    FUNCTION     \  CREATE FUNCTION st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_affine';
   DROP FUNCTION public.st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision, double precision);
       public       postgres    false    3    993    993            %            1255    16409    st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision)    FUNCTION       CREATE FUNCTION st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1,  $2, $3, 0,  $4, $5, 0,  0, 0, 1,  $6, $7, 0)$_$;
 �   DROP FUNCTION public.st_affine(geometry, double precision, double precision, double precision, double precision, double precision, double precision);
       public       postgres    false    3    993    993            �            1255    16628    st_area(geometry)    FUNCTION     �   CREATE FUNCTION st_area(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_area_polygon';
 (   DROP FUNCTION public.st_area(geometry);
       public       postgres    false    3    993            �            1255    16626    st_area2d(geometry)    FUNCTION     �   CREATE FUNCTION st_area2d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_area_polygon';
 *   DROP FUNCTION public.st_area2d(geometry);
       public       postgres    false    3    993            3           1255    17046    st_asbinary(geometry)    FUNCTION     �   CREATE FUNCTION st_asbinary(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asBinary';
 ,   DROP FUNCTION public.st_asbinary(geometry);
       public       postgres    false    3    993            5           1255    17048    st_asbinary(geometry, text)    FUNCTION     �   CREATE FUNCTION st_asbinary(geometry, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asBinary';
 2   DROP FUNCTION public.st_asbinary(geometry, text);
       public       postgres    false    3    993            �            1255    16678    st_asewkb(geometry)    FUNCTION     �   CREATE FUNCTION st_asewkb(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'WKBFromLWGEOM';
 *   DROP FUNCTION public.st_asewkb(geometry);
       public       postgres    false    993    3                       1255    16684    st_asewkb(geometry, text)    FUNCTION     �   CREATE FUNCTION st_asewkb(geometry, text) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'WKBFromLWGEOM';
 0   DROP FUNCTION public.st_asewkb(geometry, text);
       public       postgres    false    993    3            �            1255    16676    st_asewkt(geometry)    FUNCTION     �   CREATE FUNCTION st_asewkt(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asEWKT';
 *   DROP FUNCTION public.st_asewkt(geometry);
       public       postgres    false    3    993                       1255    16997    st_asgeojson(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_asgeojson(geometry, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGeoJson(1, $1, $2, 0)$_$;
 6   DROP FUNCTION public.st_asgeojson(geometry, integer);
       public       postgres    false    3    993                       1255    16998    st_asgeojson(geometry)    FUNCTION     �   CREATE FUNCTION st_asgeojson(geometry) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGeoJson(1, $1, 15, 0)$_$;
 -   DROP FUNCTION public.st_asgeojson(geometry);
       public       postgres    false    3    993                       1255    16999    st_asgeojson(integer, geometry)    FUNCTION     �   CREATE FUNCTION st_asgeojson(integer, geometry) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGeoJson($1, $2, 15, 0)$_$;
 6   DROP FUNCTION public.st_asgeojson(integer, geometry);
       public       postgres    false    3    993                       1255    17000 (   st_asgeojson(integer, geometry, integer)    FUNCTION     �   CREATE FUNCTION st_asgeojson(integer, geometry, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGeoJson($1, $2, $3, 0)$_$;
 ?   DROP FUNCTION public.st_asgeojson(integer, geometry, integer);
       public       postgres    false    3    993                       1255    17001 (   st_asgeojson(geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asgeojson(geometry, integer, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGeoJson(1, $1, $2, $3)$_$;
 ?   DROP FUNCTION public.st_asgeojson(geometry, integer, integer);
       public       postgres    false    3    993                       1255    17002 1   st_asgeojson(integer, geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asgeojson(integer, geometry, integer, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGeoJson($1, $2, $3, $4)$_$;
 H   DROP FUNCTION public.st_asgeojson(integer, geometry, integer, integer);
       public       postgres    false    3    993            �           1255    16981    st_asgml(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_asgml(geometry, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGML(2, $1, $2, 0)$_$;
 2   DROP FUNCTION public.st_asgml(geometry, integer);
       public       postgres    false    3    993            �           1255    16983    st_asgml(geometry)    FUNCTION        CREATE FUNCTION st_asgml(geometry) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGML(2, $1, 15, 0)$_$;
 )   DROP FUNCTION public.st_asgml(geometry);
       public       postgres    false    3    993            �           1255    16984    st_asgml(integer, geometry)    FUNCTION     �   CREATE FUNCTION st_asgml(integer, geometry) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGML($1, $2, 15, 0)$_$;
 2   DROP FUNCTION public.st_asgml(integer, geometry);
       public       postgres    false    3    993            �           1255    16985 $   st_asgml(integer, geometry, integer)    FUNCTION     �   CREATE FUNCTION st_asgml(integer, geometry, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGML($1, $2, $3, 0)$_$;
 ;   DROP FUNCTION public.st_asgml(integer, geometry, integer);
       public       postgres    false    3    993            �           1255    16986 $   st_asgml(geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asgml(geometry, integer, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGML(2, $1, $2, $3)$_$;
 ;   DROP FUNCTION public.st_asgml(geometry, integer, integer);
       public       postgres    false    3    993            �           1255    16987 -   st_asgml(integer, geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION st_asgml(integer, geometry, integer, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsGML($1, $2, $3, $4)$_$;
 D   DROP FUNCTION public.st_asgml(integer, geometry, integer, integer);
       public       postgres    false    3    993            �            1255    16680    st_ashexewkb(geometry)    FUNCTION     �   CREATE FUNCTION st_ashexewkb(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asHEXEWKB';
 -   DROP FUNCTION public.st_ashexewkb(geometry);
       public       postgres    false    993    3                        1255    16682    st_ashexewkb(geometry, text)    FUNCTION     �   CREATE FUNCTION st_ashexewkb(geometry, text) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asHEXEWKB';
 3   DROP FUNCTION public.st_ashexewkb(geometry, text);
       public       postgres    false    993    3            �           1255    16990    st_askml(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_askml(geometry, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsKML(2, ST_Transform($1,4326), $2)$_$;
 2   DROP FUNCTION public.st_askml(geometry, integer);
       public       postgres    false    3    993            �           1255    16993    st_askml(geometry)    FUNCTION     �   CREATE FUNCTION st_askml(geometry) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsKML(2, ST_Transform($1,4326), 15)$_$;
 )   DROP FUNCTION public.st_askml(geometry);
       public       postgres    false    3    993            �           1255    16994    st_askml(integer, geometry)    FUNCTION     �   CREATE FUNCTION st_askml(integer, geometry) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsKML($1, ST_Transform($2,4326), 15)$_$;
 2   DROP FUNCTION public.st_askml(integer, geometry);
       public       postgres    false    3    993                        1255    16995 $   st_askml(integer, geometry, integer)    FUNCTION     �   CREATE FUNCTION st_askml(integer, geometry, integer) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT _ST_AsKML($1, ST_Transform($2,4326), $3)$_$;
 ;   DROP FUNCTION public.st_askml(integer, geometry, integer);
       public       postgres    false    3    993            �           1255    16974 $   st_assvg(geometry, integer, integer)    FUNCTION     �   CREATE FUNCTION st_assvg(geometry, integer, integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'assvg_geometry';
 ;   DROP FUNCTION public.st_assvg(geometry, integer, integer);
       public       postgres    false    3    993            �           1255    16976    st_assvg(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_assvg(geometry, integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'assvg_geometry';
 2   DROP FUNCTION public.st_assvg(geometry, integer);
       public       postgres    false    3    993            �           1255    16978    st_assvg(geometry)    FUNCTION     �   CREATE FUNCTION st_assvg(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'assvg_geometry';
 )   DROP FUNCTION public.st_assvg(geometry);
       public       postgres    false    3    993            7           1255    17050    st_astext(geometry)    FUNCTION     �   CREATE FUNCTION st_astext(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_asText';
 *   DROP FUNCTION public.st_astext(geometry);
       public       postgres    false    993    3            �            1255    16640    st_azimuth(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_azimuth(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_azimuth';
 5   DROP FUNCTION public.st_azimuth(geometry, geometry);
       public       postgres    false    993    3    993            �           1255    17158 !   st_bdmpolyfromtext(text, integer)    FUNCTION     �  CREATE FUNCTION st_bdmpolyfromtext(text, integer) RETURNS geometry
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$ 
DECLARE
	geomtext alias for $1;
	srid alias for $2;
	mline geometry;
	geom geometry;
BEGIN
	mline := ST_MultiLineStringFromText(geomtext, srid);

	IF mline IS NULL
	THEN
		RAISE EXCEPTION 'Input is not a MultiLinestring';
	END IF;

	geom := multi(ST_BuildArea(mline));

	RETURN geom;
END;
$_$;
 8   DROP FUNCTION public.st_bdmpolyfromtext(text, integer);
       public       postgres    false    3    993    1031            �           1255    17156     st_bdpolyfromtext(text, integer)    FUNCTION     (  CREATE FUNCTION st_bdpolyfromtext(text, integer) RETURNS geometry
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$ 
DECLARE
	geomtext alias for $1;
	srid alias for $2;
	mline geometry;
	geom geometry;
BEGIN
	mline := ST_MultiLineStringFromText(geomtext, srid);

	IF mline IS NULL
	THEN
		RAISE EXCEPTION 'Input is not a MultiLinestring';
	END IF;

	geom := ST_BuildArea(mline);

	IF GeometryType(geom) != 'POLYGON'
	THEN
		RAISE EXCEPTION 'Input returns more then a single polygon, try using BdMPolyFromText instead';
	END IF;

	RETURN geom;
END;
$_$;
 7   DROP FUNCTION public.st_bdpolyfromtext(text, integer);
       public       postgres    false    1031    993    3            �           1255    16884    st_boundary(geometry)    FUNCTION     �   CREATE FUNCTION st_boundary(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'boundary';
 ,   DROP FUNCTION public.st_boundary(geometry);
       public       postgres    false    3    993    993            h           1255    16808    st_box(geometry)    FUNCTION     |   CREATE FUNCTION st_box(geometry) RETURNS box
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_BOX';
 '   DROP FUNCTION public.st_box(geometry);
       public       postgres    false    3    993            n           1255    16814    st_box(box3d)    FUNCTION     x   CREATE FUNCTION st_box(box3d) RETURNS box
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_to_BOX';
 $   DROP FUNCTION public.st_box(box3d);
       public       postgres    false    3    996            A            1255    16442    st_box2d(box3d_extent)    FUNCTION     �   CREATE FUNCTION st_box2d(box3d_extent) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_to_BOX2DFLOAT4';
 -   DROP FUNCTION public.st_box2d(box3d_extent);
       public       postgres    false    1005    3    999            d           1255    16804    st_box2d(geometry)    FUNCTION     �   CREATE FUNCTION st_box2d(geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_BOX2DFLOAT4';
 )   DROP FUNCTION public.st_box2d(geometry);
       public       postgres    false    3    1005    993            j           1255    16810    st_box2d(box3d)    FUNCTION     �   CREATE FUNCTION st_box2d(box3d) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_to_BOX2DFLOAT4';
 &   DROP FUNCTION public.st_box2d(box3d);
       public       postgres    false    3    1005    996            `            1255    16476    st_box2d_contain(box2d, box2d)    FUNCTION     �   CREATE FUNCTION st_box2d_contain(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_contain';
 5   DROP FUNCTION public.st_box2d_contain(box2d, box2d);
       public       postgres    false    1005    1005    3            b            1255    16478     st_box2d_contained(box2d, box2d)    FUNCTION     �   CREATE FUNCTION st_box2d_contained(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_contained';
 7   DROP FUNCTION public.st_box2d_contained(box2d, box2d);
       public       postgres    false    3    1005    1005            h            1255    16484 !   st_box2d_intersects(box2d, box2d)    FUNCTION     �   CREATE FUNCTION st_box2d_intersects(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_intersects';
 8   DROP FUNCTION public.st_box2d_intersects(box2d, box2d);
       public       postgres    false    1005    3    1005            \            1255    16472    st_box2d_left(box2d, box2d)    FUNCTION     �   CREATE FUNCTION st_box2d_left(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_left';
 2   DROP FUNCTION public.st_box2d_left(box2d, box2d);
       public       postgres    false    1005    3    1005            d            1255    16480    st_box2d_overlap(box2d, box2d)    FUNCTION     �   CREATE FUNCTION st_box2d_overlap(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_overlap';
 5   DROP FUNCTION public.st_box2d_overlap(box2d, box2d);
       public       postgres    false    1005    3    1005            X            1255    16468    st_box2d_overleft(box2d, box2d)    FUNCTION     �   CREATE FUNCTION st_box2d_overleft(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_overleft';
 6   DROP FUNCTION public.st_box2d_overleft(box2d, box2d);
       public       postgres    false    1005    1005    3            Z            1255    16470     st_box2d_overright(box2d, box2d)    FUNCTION     �   CREATE FUNCTION st_box2d_overright(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_overright';
 7   DROP FUNCTION public.st_box2d_overright(box2d, box2d);
       public       postgres    false    1005    3    1005            ^            1255    16474    st_box2d_right(box2d, box2d)    FUNCTION     �   CREATE FUNCTION st_box2d_right(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_right';
 3   DROP FUNCTION public.st_box2d_right(box2d, box2d);
       public       postgres    false    1005    3    1005            f            1255    16482    st_box2d_same(box2d, box2d)    FUNCTION     �   CREATE FUNCTION st_box2d_same(box2d, box2d) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2D_same';
 2   DROP FUNCTION public.st_box2d_same(box2d, box2d);
       public       postgres    false    1005    3    1005            f           1255    16806    st_box3d(geometry)    FUNCTION     �   CREATE FUNCTION st_box3d(geometry) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_BOX3D';
 )   DROP FUNCTION public.st_box3d(geometry);
       public       postgres    false    3    996    993            l           1255    16812    st_box3d(box2d)    FUNCTION     �   CREATE FUNCTION st_box3d(box2d) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_to_BOX3D';
 &   DROP FUNCTION public.st_box3d(box2d);
       public       postgres    false    3    996    1005            @            1255    16440    st_box3d_extent(box3d_extent)    FUNCTION     �   CREATE FUNCTION st_box3d_extent(box3d_extent) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_extent_to_BOX3D';
 4   DROP FUNCTION public.st_box3d_extent(box3d_extent);
       public       postgres    false    999    3    996            �           1255    16871 %   st_buffer(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_buffer(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'buffer';
 <   DROP FUNCTION public.st_buffer(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16873 .   st_buffer(geometry, double precision, integer)    FUNCTION     �   CREATE FUNCTION st_buffer(geometry, double precision, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'buffer';
 E   DROP FUNCTION public.st_buffer(geometry, double precision, integer);
       public       postgres    false    3    993    993            )           1255    16723    st_buildarea(geometry)    FUNCTION     �   CREATE FUNCTION st_buildarea(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_buildarea';
 -   DROP FUNCTION public.st_buildarea(geometry);
       public       postgres    false    3    993    993            }           1255    16829    st_bytea(geometry)    FUNCTION     �   CREATE FUNCTION st_bytea(geometry) RETURNS bytea
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_bytea';
 )   DROP FUNCTION public.st_bytea(geometry);
       public       postgres    false    3    993                       1255    16690    st_cache_bbox()    FUNCTION     k   CREATE FUNCTION st_cache_bbox() RETURNS trigger
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'cache_bbox';
 &   DROP FUNCTION public.st_cache_bbox();
       public       postgres    false    3            �           1255    16964    st_centroid(geometry)    FUNCTION     �   CREATE FUNCTION st_centroid(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'centroid';
 ,   DROP FUNCTION public.st_centroid(geometry);
       public       postgres    false    3    993    993            �           1255    16894    st_collect(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_collect(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'LWGEOM_collect';
 5   DROP FUNCTION public.st_collect(geometry, geometry);
       public       postgres    false    3    993    993    993            �           1255    16901    st_collect(geometry[])    FUNCTION     �   CREATE FUNCTION st_collect(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_collect_garray';
 -   DROP FUNCTION public.st_collect(geometry[]);
       public       postgres    false    3    993    995            �           1255    16900    st_collect_garray(geometry[])    FUNCTION     �   CREATE FUNCTION st_collect_garray(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_collect_garray';
 4   DROP FUNCTION public.st_collect_garray(geometry[]);
       public       postgres    false    3    993    995            �           1255    16892     st_collector(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_collector(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'LWGEOM_collect';
 7   DROP FUNCTION public.st_collector(geometry, geometry);
       public       postgres    false    3    993    993    993            4           1255    16737     st_combine_bbox(box2d, geometry)    FUNCTION     �   CREATE FUNCTION st_combine_bbox(box2d, geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_combine';
 7   DROP FUNCTION public.st_combine_bbox(box2d, geometry);
       public       postgres    false    3    1005    1005    993            6           1255    16739 '   st_combine_bbox(box3d_extent, geometry)    FUNCTION     �   CREATE FUNCTION st_combine_bbox(box3d_extent, geometry) RETURNS box3d_extent
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'BOX3D_combine';
 >   DROP FUNCTION public.st_combine_bbox(box3d_extent, geometry);
       public       postgres    false    3    999    999    993            8           1255    16743     st_combine_bbox(box3d, geometry)    FUNCTION     �   CREATE FUNCTION st_combine_bbox(box3d, geometry) RETURNS box3d
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'BOX3D_combine';
 7   DROP FUNCTION public.st_combine_bbox(box3d, geometry);
       public       postgres    false    3    996    996    993            �            1255    16595    st_compression(chip)    FUNCTION     �   CREATE FUNCTION st_compression(chip) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getCompression';
 +   DROP FUNCTION public.st_compression(chip);
       public       postgres    false    3    1002            �           1255    16950    st_contains(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_contains(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 && $2 AND _ST_Contains($1,$2)$_$;
 6   DROP FUNCTION public.st_contains(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16956 '   st_containsproperly(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_containsproperly(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 && $2 AND _ST_ContainsProperly($1,$2)$_$;
 >   DROP FUNCTION public.st_containsproperly(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16875    st_convexhull(geometry)    FUNCTION     �   CREATE FUNCTION st_convexhull(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'convexhull';
 .   DROP FUNCTION public.st_convexhull(geometry);
       public       postgres    false    3    993    993            �           1255    17174    st_coorddim(geometry)    FUNCTION     �   CREATE FUNCTION st_coorddim(geometry) RETURNS smallint
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_ndims';
 ,   DROP FUNCTION public.st_coorddim(geometry);
       public       postgres    false    3    993            �           1255    16952     st_coveredby(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_coveredby(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 && $2 AND _ST_CoveredBy($1,$2)$_$;
 7   DROP FUNCTION public.st_coveredby(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16954    st_covers(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_covers(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 && $2 AND _ST_Covers($1,$2)$_$;
 4   DROP FUNCTION public.st_covers(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16944    st_crosses(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_crosses(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 && $2 AND _ST_Crosses($1,$2)$_$;
 5   DROP FUNCTION public.st_crosses(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    17185 !   st_curvetoline(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_curvetoline(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_curve_segmentize';
 8   DROP FUNCTION public.st_curvetoline(geometry, integer);
       public       postgres    false    993    3    993            �           1255    17186    st_curvetoline(geometry)    FUNCTION     �   CREATE FUNCTION st_curvetoline(geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_CurveToLine($1, 32)$_$;
 /   DROP FUNCTION public.st_curvetoline(geometry);
       public       postgres    false    3    993    993            �            1255    16593    st_datatype(chip)    FUNCTION     �   CREATE FUNCTION st_datatype(chip) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getDatatype';
 (   DROP FUNCTION public.st_datatype(chip);
       public       postgres    false    3    1002            �           1255    16882 !   st_difference(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_difference(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'difference';
 8   DROP FUNCTION public.st_difference(geometry, geometry);
       public       postgres    false    3    993    993    993                       1255    17012    st_dimension(geometry)    FUNCTION     �   CREATE FUNCTION st_dimension(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_dimension';
 -   DROP FUNCTION public.st_dimension(geometry);
       public       postgres    false    3    993            �           1255    16933    st_disjoint(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_disjoint(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'disjoint';
 6   DROP FUNCTION public.st_disjoint(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16634    st_distance(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_distance(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_mindistance2d';
 6   DROP FUNCTION public.st_distance(geometry, geometry);
       public       postgres    false    993    3    993            �            1255    16632 &   st_distance_sphere(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_distance_sphere(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_distance_sphere';
 =   DROP FUNCTION public.st_distance_sphere(geometry, geometry);
       public       postgres    false    993    3    993            �            1255    16630 2   st_distance_spheroid(geometry, geometry, spheroid)    FUNCTION     �   CREATE FUNCTION st_distance_spheroid(geometry, geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_distance_ellipsoid_point';
 I   DROP FUNCTION public.st_distance_spheroid(geometry, geometry, spheroid);
       public       postgres    false    993    990    993    3            �            1255    16581    st_dropbbox(geometry)    FUNCTION     �   CREATE FUNCTION st_dropbbox(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_dropBBOX';
 ,   DROP FUNCTION public.st_dropbbox(geometry);
       public       postgres    false    993    993    3            0           1255    16733    st_dump(geometry)    FUNCTION     �   CREATE FUNCTION st_dump(geometry) RETURNS SETOF geometry_dump
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_dump';
 (   DROP FUNCTION public.st_dump(geometry);
       public       postgres    false    3    1008    993            2           1255    16735    st_dumprings(geometry)    FUNCTION     �   CREATE FUNCTION st_dumprings(geometry) RETURNS SETOF geometry_dump
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_dump_rings';
 -   DROP FUNCTION public.st_dumprings(geometry);
       public       postgres    false    3    1008    993            �           1255    16938 0   st_dwithin(geometry, geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_dwithin(geometry, geometry, double precision) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 && ST_Expand($2,$3) AND $2 && ST_Expand($1,$3) AND _ST_DWithin($1, $2, $3)$_$;
 G   DROP FUNCTION public.st_dwithin(geometry, geometry, double precision);
       public       postgres    false    3    993    993            )           1255    17036    st_endpoint(geometry)    FUNCTION     �   CREATE FUNCTION st_endpoint(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_endpoint_linestring';
 ,   DROP FUNCTION public.st_endpoint(geometry);
       public       postgres    false    993    3    993            �            1255    16662    st_envelope(geometry)    FUNCTION     �   CREATE FUNCTION st_envelope(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_envelope';
 ,   DROP FUNCTION public.st_envelope(geometry);
       public       postgres    false    993    3    993            �           1255    16972    st_equals(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_equals(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'geomequals';
 4   DROP FUNCTION public.st_equals(geometry, geometry);
       public       postgres    false    3    993    993            :           1255    16747 %   st_estimated_extent(text, text, text)    FUNCTION     �   CREATE FUNCTION st_estimated_extent(text, text, text) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT SECURITY DEFINER
    AS '$libdir/postgis-1.4', 'LWGEOM_estimated_extent';
 <   DROP FUNCTION public.st_estimated_extent(text, text, text);
       public       postgres    false    3    1005            <           1255    16749    st_estimated_extent(text, text)    FUNCTION     �   CREATE FUNCTION st_estimated_extent(text, text) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT SECURITY DEFINER
    AS '$libdir/postgis-1.4', 'LWGEOM_estimated_extent';
 6   DROP FUNCTION public.st_estimated_extent(text, text);
       public       postgres    false    3    1005            �            1255    16656 "   st_expand(box3d, double precision)    FUNCTION     �   CREATE FUNCTION st_expand(box3d, double precision) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_expand';
 9   DROP FUNCTION public.st_expand(box3d, double precision);
       public       postgres    false    996    996    3            �            1255    16658 "   st_expand(box2d, double precision)    FUNCTION     �   CREATE FUNCTION st_expand(box2d, double precision) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_expand';
 9   DROP FUNCTION public.st_expand(box2d, double precision);
       public       postgres    false    1005    3    1005            �            1255    16660 %   st_expand(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_expand(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_expand';
 <   DROP FUNCTION public.st_expand(geometry, double precision);
       public       postgres    false    3    993    993                       1255    17014    st_exteriorring(geometry)    FUNCTION     �   CREATE FUNCTION st_exteriorring(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_exteriorring_polygon';
 0   DROP FUNCTION public.st_exteriorring(geometry);
       public       postgres    false    993    3    993            �            1255    16589    st_factor(chip)    FUNCTION     }   CREATE FUNCTION st_factor(chip) RETURNS real
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getFactor';
 &   DROP FUNCTION public.st_factor(chip);
       public       postgres    false    3    1002            >           1255    16751     st_find_extent(text, text, text)    FUNCTION     }  CREATE FUNCTION st_find_extent(text, text, text) RETURNS box2d
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
DECLARE
	schemaname alias for $1;
	tablename alias for $2;
	columnname alias for $3;
	myrec RECORD;

BEGIN
	FOR myrec IN EXECUTE 'SELECT extent("' || columnname || '") FROM "' || schemaname || '"."' || tablename || '"' LOOP
		return myrec.extent;
	END LOOP; 
END;
$_$;
 7   DROP FUNCTION public.st_find_extent(text, text, text);
       public       postgres    false    3    1031    1005            @           1255    16753    st_find_extent(text, text)    FUNCTION     F  CREATE FUNCTION st_find_extent(text, text) RETURNS box2d
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
DECLARE
	tablename alias for $1;
	columnname alias for $2;
	myrec RECORD;

BEGIN
	FOR myrec IN EXECUTE 'SELECT extent("' || columnname || '") FROM "' || tablename || '"' LOOP
		return myrec.extent;
	END LOOP; 
END;
$_$;
 1   DROP FUNCTION public.st_find_extent(text, text);
       public       postgres    false    3    1031    1005            �            1255    16642    st_force_2d(geometry)    FUNCTION     �   CREATE FUNCTION st_force_2d(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_2d';
 ,   DROP FUNCTION public.st_force_2d(geometry);
       public       postgres    false    993    993    3            �            1255    16646    st_force_3d(geometry)    FUNCTION     �   CREATE FUNCTION st_force_3d(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_3dz';
 ,   DROP FUNCTION public.st_force_3d(geometry);
       public       postgres    false    993    993    3            �            1255    16648    st_force_3dm(geometry)    FUNCTION     �   CREATE FUNCTION st_force_3dm(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_3dm';
 -   DROP FUNCTION public.st_force_3dm(geometry);
       public       postgres    false    3    993    993            �            1255    16644    st_force_3dz(geometry)    FUNCTION     �   CREATE FUNCTION st_force_3dz(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_3dz';
 -   DROP FUNCTION public.st_force_3dz(geometry);
       public       postgres    false    993    3    993            �            1255    16650    st_force_4d(geometry)    FUNCTION     �   CREATE FUNCTION st_force_4d(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_4d';
 ,   DROP FUNCTION public.st_force_4d(geometry);
       public       postgres    false    993    993    3            �            1255    16652    st_force_collection(geometry)    FUNCTION     �   CREATE FUNCTION st_force_collection(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_collection';
 4   DROP FUNCTION public.st_force_collection(geometry);
       public       postgres    false    993    3    993            �            1255    16666    st_forcerhr(geometry)    FUNCTION     �   CREATE FUNCTION st_forcerhr(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_forceRHR_poly';
 ,   DROP FUNCTION public.st_forcerhr(geometry);
       public       postgres    false    3    993    993                       1255    17003    st_geohash(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_geohash(geometry, integer) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'ST_GeoHash';
 4   DROP FUNCTION public.st_geohash(geometry, integer);
       public       postgres    false    3    993            	           1255    17004    st_geohash(geometry)    FUNCTION     {   CREATE FUNCTION st_geohash(geometry) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_GeoHash($1, 0)$_$;
 +   DROP FUNCTION public.st_geohash(geometry);
       public       postgres    false    3    993            �           1255    16898 #   st_geom_accum(geometry[], geometry)    FUNCTION     �   CREATE FUNCTION st_geom_accum(geometry[], geometry) RETURNS geometry[]
    LANGUAGE c IMMUTABLE
    AS '$libdir/postgis-1.4', 'LWGEOM_accum';
 :   DROP FUNCTION public.st_geom_accum(geometry[], geometry);
       public       postgres    false    3    995    995    993            j           1255    17101 "   st_geomcollfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_geomcollfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(ST_GeomFromText($1, $2)) = 'GEOMETRYCOLLECTION'
	THEN ST_GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 9   DROP FUNCTION public.st_geomcollfromtext(text, integer);
       public       postgres    false    993    3            l           1255    17103    st_geomcollfromtext(text)    FUNCTION     �   CREATE FUNCTION st_geomcollfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(ST_GeomFromText($1)) = 'GEOMETRYCOLLECTION'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 0   DROP FUNCTION public.st_geomcollfromtext(text);
       public       postgres    false    3    993            �           1255    17152 "   st_geomcollfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_geomcollfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(GeomFromWKB($1, $2)) = 'GEOMETRYCOLLECTION'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 9   DROP FUNCTION public.st_geomcollfromwkb(bytea, integer);
       public       postgres    false    3    993            �           1255    17154    st_geomcollfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_geomcollfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(ST_GeomFromWKB($1)) = 'GEOMETRYCOLLECTION'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 0   DROP FUNCTION public.st_geomcollfromwkb(bytea);
       public       postgres    false    993    3            B            1255    16443    st_geometry(box3d_extent)    FUNCTION     �   CREATE FUNCTION st_geometry(box3d_extent) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_to_LWGEOM';
 0   DROP FUNCTION public.st_geometry(box3d_extent);
       public       postgres    false    3    999    993            s           1255    16819    st_geometry(box2d)    FUNCTION     �   CREATE FUNCTION st_geometry(box2d) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_to_LWGEOM';
 )   DROP FUNCTION public.st_geometry(box2d);
       public       postgres    false    3    993    1005            u           1255    16821    st_geometry(box3d)    FUNCTION     �   CREATE FUNCTION st_geometry(box3d) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_to_LWGEOM';
 )   DROP FUNCTION public.st_geometry(box3d);
       public       postgres    false    3    993    996            w           1255    16823    st_geometry(text)    FUNCTION     �   CREATE FUNCTION st_geometry(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'parse_WKT_lwgeom';
 (   DROP FUNCTION public.st_geometry(text);
       public       postgres    false    3    993            y           1255    16825    st_geometry(chip)    FUNCTION     �   CREATE FUNCTION st_geometry(chip) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_to_LWGEOM';
 (   DROP FUNCTION public.st_geometry(chip);
       public       postgres    false    3    993    1002            {           1255    16827    st_geometry(bytea)    FUNCTION     �   CREATE FUNCTION st_geometry(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_bytea';
 )   DROP FUNCTION public.st_geometry(bytea);
       public       postgres    false    3    993            �            1255    16527 %   st_geometry_above(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_above(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_above';
 <   DROP FUNCTION public.st_geometry_above(geometry, geometry);
       public       postgres    false    993    993    3            �            1255    16529 %   st_geometry_below(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_below(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_below';
 <   DROP FUNCTION public.st_geometry_below(geometry, geometry);
       public       postgres    false    3    993    993            t            1255    16496 #   st_geometry_cmp(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_cmp(geometry, geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_cmp';
 :   DROP FUNCTION public.st_geometry_cmp(geometry, geometry);
       public       postgres    false    993    3    993            �            1255    16531 '   st_geometry_contain(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_contain(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_contain';
 >   DROP FUNCTION public.st_geometry_contain(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16533 )   st_geometry_contained(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_contained(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_contained';
 @   DROP FUNCTION public.st_geometry_contained(geometry, geometry);
       public       postgres    false    993    3    993            r            1255    16494 "   st_geometry_eq(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_eq(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_eq';
 9   DROP FUNCTION public.st_geometry_eq(geometry, geometry);
       public       postgres    false    993    993    3            p            1255    16492 "   st_geometry_ge(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_ge(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_ge';
 9   DROP FUNCTION public.st_geometry_ge(geometry, geometry);
       public       postgres    false    3    993    993            n            1255    16490 "   st_geometry_gt(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_gt(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_gt';
 9   DROP FUNCTION public.st_geometry_gt(geometry, geometry);
       public       postgres    false    3    993    993            l            1255    16488 "   st_geometry_le(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_le(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_le';
 9   DROP FUNCTION public.st_geometry_le(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16523 $   st_geometry_left(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_left(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_left';
 ;   DROP FUNCTION public.st_geometry_left(geometry, geometry);
       public       postgres    false    993    993    3            j            1255    16486 "   st_geometry_lt(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_lt(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'lwgeom_lt';
 9   DROP FUNCTION public.st_geometry_lt(geometry, geometry);
       public       postgres    false    993    3    993            ~            1255    16519 )   st_geometry_overabove(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_overabove(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_overabove';
 @   DROP FUNCTION public.st_geometry_overabove(geometry, geometry);
       public       postgres    false    993    3    993            �            1255    16521 )   st_geometry_overbelow(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_overbelow(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_overbelow';
 @   DROP FUNCTION public.st_geometry_overbelow(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16535 '   st_geometry_overlap(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_overlap(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_overlap';
 >   DROP FUNCTION public.st_geometry_overlap(geometry, geometry);
       public       postgres    false    3    993    993            z            1255    16515 (   st_geometry_overleft(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_overleft(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_overleft';
 ?   DROP FUNCTION public.st_geometry_overleft(geometry, geometry);
       public       postgres    false    993    3    993            |            1255    16517 )   st_geometry_overright(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_overright(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_overright';
 @   DROP FUNCTION public.st_geometry_overright(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16525 %   st_geometry_right(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_right(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_right';
 <   DROP FUNCTION public.st_geometry_right(geometry, geometry);
       public       postgres    false    993    3    993            �            1255    16537 $   st_geometry_same(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_geometry_same(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_same';
 ;   DROP FUNCTION public.st_geometry_same(geometry, geometry);
       public       postgres    false    3    993    993            9           1255    17052    st_geometryfromtext(text)    FUNCTION     �   CREATE FUNCTION st_geometryfromtext(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_text';
 0   DROP FUNCTION public.st_geometryfromtext(text);
       public       postgres    false    3    993            ;           1255    17054 "   st_geometryfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_geometryfromtext(text, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_text';
 9   DROP FUNCTION public.st_geometryfromtext(text, integer);
       public       postgres    false    3    993                       1255    17010    st_geometryn(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_geometryn(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_geometryn_collection';
 6   DROP FUNCTION public.st_geometryn(geometry, integer);
       public       postgres    false    3    993    993                       1255    17022    st_geometrytype(geometry)    FUNCTION     �  CREATE FUNCTION st_geometrytype(geometry) RETURNS text
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$ 
	DECLARE
	gtype text := geometrytype($1);
	BEGIN
	IF (gtype IN ('POINT', 'POINTM')) THEN
	    gtype := 'Point';
	ELSIF (gtype IN ('LINESTRING', 'LINESTRINGM')) THEN
	    gtype := 'LineString';
	ELSIF (gtype IN ('POLYGON', 'POLYGONM')) THEN
	    gtype := 'Polygon';
	ELSIF (gtype IN ('MULTIPOINT', 'MULTIPOINTM')) THEN
	    gtype := 'MultiPoint';
	ELSIF (gtype IN ('MULTILINESTRING', 'MULTILINESTRINGM')) THEN
	    gtype := 'MultiLineString';
	ELSIF (gtype IN ('MULTIPOLYGON', 'MULTIPOLYGONM')) THEN
	    gtype := 'MultiPolygon';
	ELSE
	    gtype := 'Geometry';
	END IF;
	RETURN 'ST_' || gtype;
	END
$_$;
 0   DROP FUNCTION public.st_geometrytype(geometry);
       public       postgres    false    3    1031    993                       1255    16686    st_geomfromewkb(bytea)    FUNCTION     �   CREATE FUNCTION st_geomfromewkb(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOMFromWKB';
 -   DROP FUNCTION public.st_geomfromewkb(bytea);
       public       postgres    false    3    993                       1255    16688    st_geomfromewkt(text)    FUNCTION     �   CREATE FUNCTION st_geomfromewkt(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'parse_WKT_lwgeom';
 ,   DROP FUNCTION public.st_geomfromewkt(text);
       public       postgres    false    3    993            =           1255    17056    st_geomfromtext(text)    FUNCTION     �   CREATE FUNCTION st_geomfromtext(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_text';
 ,   DROP FUNCTION public.st_geomfromtext(text);
       public       postgres    false    993    3            ?           1255    17058    st_geomfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_geomfromtext(text, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_text';
 5   DROP FUNCTION public.st_geomfromtext(text, integer);
       public       postgres    false    993    3            n           1255    17105    st_geomfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_geomfromwkb(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_WKB';
 ,   DROP FUNCTION public.st_geomfromwkb(bytea);
       public       postgres    false    3    993            p           1255    17107    st_geomfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_geomfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_SetSRID(ST_GeomFromWKB($1), $2)$_$;
 5   DROP FUNCTION public.st_geomfromwkb(bytea, integer);
       public       postgres    false    3    993            �           1255    17187    st_hasarc(geometry)    FUNCTION     �   CREATE FUNCTION st_hasarc(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_has_arc';
 *   DROP FUNCTION public.st_hasarc(geometry);
       public       postgres    false    3    993            �            1255    16672    st_hasbbox(geometry)    FUNCTION     �   CREATE FUNCTION st_hasbbox(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_hasBBOX';
 +   DROP FUNCTION public.st_hasbbox(geometry);
       public       postgres    false    3    993            �            1255    16587    st_height(chip)    FUNCTION     �   CREATE FUNCTION st_height(chip) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getHeight';
 &   DROP FUNCTION public.st_height(chip);
       public       postgres    false    3    1002                       1255    17020 #   st_interiorringn(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_interiorringn(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_interiorringn_polygon';
 :   DROP FUNCTION public.st_interiorringn(geometry, integer);
       public       postgres    false    993    3    993            �           1255    16869 #   st_intersection(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_intersection(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'intersection';
 :   DROP FUNCTION public.st_intersection(geometry, geometry);
       public       postgres    false    3    993    993    993            �           1255    16941 !   st_intersects(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_intersects(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 && $2 AND _ST_Intersects($1,$2)$_$;
 8   DROP FUNCTION public.st_intersects(geometry, geometry);
       public       postgres    false    3    993    993            +           1255    17038    st_isclosed(geometry)    FUNCTION     �   CREATE FUNCTION st_isclosed(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_isclosed_linestring';
 ,   DROP FUNCTION public.st_isclosed(geometry);
       public       postgres    false    993    3            -           1255    17040    st_isempty(geometry)    FUNCTION     �   CREATE FUNCTION st_isempty(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_isempty';
 +   DROP FUNCTION public.st_isempty(geometry);
       public       postgres    false    3    993            �           1255    16966    st_isring(geometry)    FUNCTION     |   CREATE FUNCTION st_isring(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'isring';
 *   DROP FUNCTION public.st_isring(geometry);
       public       postgres    false    3    993            �           1255    16970    st_issimple(geometry)    FUNCTION     �   CREATE FUNCTION st_issimple(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'issimple';
 ,   DROP FUNCTION public.st_issimple(geometry);
       public       postgres    false    3    993            �           1255    16961    st_isvalid(geometry)    FUNCTION     ~   CREATE FUNCTION st_isvalid(geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'isvalid';
 +   DROP FUNCTION public.st_isvalid(geometry);
       public       postgres    false    3    993            �           1255    16880    st_isvalidreason(geometry)    FUNCTION     �   CREATE FUNCTION st_isvalidreason(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'isvalidreason';
 1   DROP FUNCTION public.st_isvalidreason(geometry);
       public       postgres    false    3    993            �            1255    16612    st_length(geometry)    FUNCTION     �   CREATE FUNCTION st_length(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length2d_linestring';
 *   DROP FUNCTION public.st_length(geometry);
       public       postgres    false    993    3            �            1255    16610    st_length2d(geometry)    FUNCTION     �   CREATE FUNCTION st_length2d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length2d_linestring';
 ,   DROP FUNCTION public.st_length2d(geometry);
       public       postgres    false    993    3            �            1255    16618 (   st_length2d_spheroid(geometry, spheroid)    FUNCTION     �   CREATE FUNCTION st_length2d_spheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length2d_ellipsoid_linestring';
 ?   DROP FUNCTION public.st_length2d_spheroid(geometry, spheroid);
       public       postgres    false    990    993    3            �            1255    16608    st_length3d(geometry)    FUNCTION     �   CREATE FUNCTION st_length3d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length_linestring';
 ,   DROP FUNCTION public.st_length3d(geometry);
       public       postgres    false    993    3            �            1255    16614 (   st_length3d_spheroid(geometry, spheroid)    FUNCTION     �   CREATE FUNCTION st_length3d_spheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length_ellipsoid_linestring';
 ?   DROP FUNCTION public.st_length3d_spheroid(geometry, spheroid);
       public       postgres    false    993    990    3            �            1255    16616 &   st_length_spheroid(geometry, spheroid)    FUNCTION     �   CREATE FUNCTION st_length_spheroid(geometry, spheroid) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_length_ellipsoid_linestring';
 =   DROP FUNCTION public.st_length_spheroid(geometry, spheroid);
       public       postgres    false    990    3    993            �           1255    16859 5   st_line_interpolate_point(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_line_interpolate_point(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_line_interpolate_point';
 L   DROP FUNCTION public.st_line_interpolate_point(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16863 (   st_line_locate_point(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_line_locate_point(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_line_locate_point';
 ?   DROP FUNCTION public.st_line_locate_point(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16861 ?   st_line_substring(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_line_substring(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_line_substring';
 V   DROP FUNCTION public.st_line_substring(geometry, double precision, double precision);
       public       postgres    false    3    993    993            �           1255    16877 ,   st_linecrossingdirection(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_linecrossingdirection(geometry, geometry) RETURNS integer
    LANGUAGE sql IMMUTABLE
    AS $_$ SELECT CASE WHEN NOT $1 && $2 THEN 0 ELSE _ST_LineCrossingDirection($1,$2) END $_$;
 C   DROP FUNCTION public.st_linecrossingdirection(geometry, geometry);
       public       postgres    false    3    993    993                       1255    16707    st_linefrommultipoint(geometry)    FUNCTION     �   CREATE FUNCTION st_linefrommultipoint(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_line_from_mpoint';
 6   DROP FUNCTION public.st_linefrommultipoint(geometry);
       public       postgres    false    993    993    3            E           1255    17064    st_linefromtext(text)    FUNCTION     �   CREATE FUNCTION st_linefromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'LINESTRING'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 ,   DROP FUNCTION public.st_linefromtext(text);
       public       postgres    false    993    3            G           1255    17066    st_linefromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_linefromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1, $2)) = 'LINESTRING'
	THEN GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 5   DROP FUNCTION public.st_linefromtext(text, integer);
       public       postgres    false    3    993            v           1255    17113    st_linefromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_linefromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'LINESTRING'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 5   DROP FUNCTION public.st_linefromwkb(bytea, integer);
       public       postgres    false    993    3            x           1255    17115    st_linefromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_linefromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'LINESTRING'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 ,   DROP FUNCTION public.st_linefromwkb(bytea);
       public       postgres    false    993    3            .           1255    16728    st_linemerge(geometry)    FUNCTION     �   CREATE FUNCTION st_linemerge(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'linemerge';
 -   DROP FUNCTION public.st_linemerge(geometry);
       public       postgres    false    3    993    993            z           1255    17117 $   st_linestringfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_linestringfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'LINESTRING'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 ;   DROP FUNCTION public.st_linestringfromwkb(bytea, integer);
       public       postgres    false    3    993            |           1255    17119    st_linestringfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_linestringfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'LINESTRING'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 2   DROP FUNCTION public.st_linestringfromwkb(bytea);
       public       postgres    false    3    993            �           1255    17188    st_linetocurve(geometry)    FUNCTION     �   CREATE FUNCTION st_linetocurve(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_line_desegmentize';
 /   DROP FUNCTION public.st_linetocurve(geometry);
       public       postgres    false    993    993    3            �           1255    16867 3   st_locate_along_measure(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_locate_along_measure(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ SELECT locate_between_measures($1, $2, $2) $_$;
 J   DROP FUNCTION public.st_locate_along_measure(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16865 H   st_locate_between_measures(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_locate_between_measures(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_locate_between_m';
 _   DROP FUNCTION public.st_locate_between_measures(geometry, double precision, double precision);
       public       postgres    false    3    993    993            �           1255    16878 H   st_locatebetweenelevations(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_locatebetweenelevations(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'ST_LocateBetweenElevations';
 _   DROP FUNCTION public.st_locatebetweenelevations(geometry, double precision, double precision);
       public       postgres    false    3    993    993            %           1255    17032    st_m(geometry)    FUNCTION     �   CREATE FUNCTION st_m(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_m_point';
 %   DROP FUNCTION public.st_m(geometry);
       public       postgres    false    3    993                       1255    16700     st_makebox2d(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_makebox2d(geometry, geometry) RETURNS box2d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX2DFLOAT4_construct';
 7   DROP FUNCTION public.st_makebox2d(geometry, geometry);
       public       postgres    false    993    1005    3    993                       1255    16702     st_makebox3d(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_makebox3d(geometry, geometry) RETURNS box3d
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_construct';
 7   DROP FUNCTION public.st_makebox3d(geometry, geometry);
       public       postgres    false    993    993    996    3                       1255    16705    st_makeline(geometry[])    FUNCTION     �   CREATE FUNCTION st_makeline(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makeline_garray';
 .   DROP FUNCTION public.st_makeline(geometry[]);
       public       postgres    false    995    993    3                       1255    16709    st_makeline(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_makeline(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makeline';
 6   DROP FUNCTION public.st_makeline(geometry, geometry);
       public       postgres    false    993    993    993    3                       1255    16704    st_makeline_garray(geometry[])    FUNCTION     �   CREATE FUNCTION st_makeline_garray(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makeline_garray';
 5   DROP FUNCTION public.st_makeline_garray(geometry[]);
       public       postgres    false    3    993    995            
           1255    16692 0   st_makepoint(double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_makepoint(double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoint';
 G   DROP FUNCTION public.st_makepoint(double precision, double precision);
       public       postgres    false    993    3                       1255    16694 B   st_makepoint(double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_makepoint(double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoint';
 Y   DROP FUNCTION public.st_makepoint(double precision, double precision, double precision);
       public       postgres    false    3    993                       1255    16696 T   st_makepoint(double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_makepoint(double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoint';
 k   DROP FUNCTION public.st_makepoint(double precision, double precision, double precision, double precision);
       public       postgres    false    3    993                       1255    16698 C   st_makepointm(double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_makepointm(double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoint3dm';
 Z   DROP FUNCTION public.st_makepointm(double precision, double precision, double precision);
       public       postgres    false    3    993            %           1255    16719 $   st_makepolygon(geometry, geometry[])    FUNCTION     �   CREATE FUNCTION st_makepolygon(geometry, geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoly';
 ;   DROP FUNCTION public.st_makepolygon(geometry, geometry[]);
       public       postgres    false    3    993    993    995            '           1255    16721    st_makepolygon(geometry)    FUNCTION     �   CREATE FUNCTION st_makepolygon(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoly';
 /   DROP FUNCTION public.st_makepolygon(geometry);
       public       postgres    false    3    993    993            �            1255    16636 #   st_max_distance(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_max_distance(geometry, geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_maxdistance2d_linestring';
 :   DROP FUNCTION public.st_max_distance(geometry, geometry);
       public       postgres    false    993    993    3            �            1255    16600    st_mem_size(geometry)    FUNCTION     �   CREATE FUNCTION st_mem_size(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_mem_size';
 ,   DROP FUNCTION public.st_mem_size(geometry);
       public       postgres    false    3    993            �           1255    17189 +   st_minimumboundingcircle(geometry, integer)    FUNCTION     V  CREATE FUNCTION st_minimumboundingcircle(inputgeom geometry, segs_per_quarter integer) RETURNS geometry
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $$
	DECLARE     
	hull GEOMETRY;
	ring GEOMETRY;
	center GEOMETRY;
	radius DOUBLE PRECISION;
	dist DOUBLE PRECISION;
	d DOUBLE PRECISION;
	idx1 integer;
	idx2 integer;
	l1 GEOMETRY;
	l2 GEOMETRY;
	p1 GEOMETRY;
	p2 GEOMETRY;
	a1 DOUBLE PRECISION;
	a2 DOUBLE PRECISION;

	
	BEGIN

	-- First compute the ConvexHull of the geometry
	hull = ST_ConvexHull(inputgeom);
	--A point really has no MBC
	IF ST_GeometryType(hull) = 'ST_Point' THEN
		RETURN hull;
	END IF;
	-- convert the hull perimeter to a linestring so we can manipulate individual points
	--If its already a linestring force it to a closed linestring
	ring = CASE WHEN ST_GeometryType(hull) = 'ST_LineString' THEN ST_AddPoint(hull, ST_StartPoint(hull)) ELSE ST_ExteriorRing(hull) END;

	dist = 0;
	-- Brute Force - check every pair
	FOR i in 1 .. (ST_NumPoints(ring)-2)
		LOOP
			FOR j in i .. (ST_NumPoints(ring)-1)
				LOOP
				d = ST_Distance(ST_PointN(ring,i),ST_PointN(ring,j));
				-- Check the distance and update if larger
				IF (d > dist) THEN
					dist = d;
					idx1 = i;
					idx2 = j;
				END IF;
			END LOOP;
		END LOOP;

	-- We now have the diameter of the convex hull.  The following line returns it if desired.
	-- RETURN MakeLine(PointN(ring,idx1),PointN(ring,idx2));

	-- Now for the Minimum Bounding Circle.  Since we know the two points furthest from each
	-- other, the MBC must go through those two points. Start with those points as a diameter of a circle.
	
	-- The radius is half the distance between them and the center is midway between them
	radius = ST_Distance(ST_PointN(ring,idx1),ST_PointN(ring,idx2)) / 2.0;
	center = ST_Line_interpolate_point(ST_MakeLine(ST_PointN(ring,idx1),ST_PointN(ring,idx2)),0.5);

	-- Loop through each vertex and check if the distance from the center to the point
	-- is greater than the current radius.
	FOR k in 1 .. (ST_NumPoints(ring)-1)
		LOOP
		IF(k <> idx1 and k <> idx2) THEN
			dist = ST_Distance(center,ST_PointN(ring,k));
			IF (dist > radius) THEN
				-- We have to expand the circle.  The new circle must pass trhough
				-- three points - the two original diameters and this point.
				
				-- Draw a line from the first diameter to this point
				l1 = ST_Makeline(ST_PointN(ring,idx1),ST_PointN(ring,k));
				-- Compute the midpoint
				p1 = ST_line_interpolate_point(l1,0.5);
				-- Rotate the line 90 degrees around the midpoint (perpendicular bisector)
				l1 = ST_Translate(ST_Rotate(ST_Translate(l1,-X(p1),-Y(p1)),pi()/2),X(p1),Y(p1));
				--  Compute the azimuth of the bisector
				a1 = ST_Azimuth(ST_PointN(l1,1),ST_PointN(l1,2));
				--  Extend the line in each direction the new computed distance to insure they will intersect
				l1 = ST_AddPoint(l1,ST_Makepoint(X(ST_PointN(l1,2))+sin(a1)*dist,Y(ST_PointN(l1,2))+cos(a1)*dist),-1);
				l1 = ST_AddPoint(l1,ST_Makepoint(X(ST_PointN(l1,1))-sin(a1)*dist,Y(ST_PointN(l1,1))-cos(a1)*dist),0);

				-- Repeat for the line from the point to the other diameter point
				l2 = ST_Makeline(ST_PointN(ring,idx2),ST_PointN(ring,k));
				p2 = ST_Line_interpolate_point(l2,0.5);
				l2 = ST_Translate(ST_Rotate(ST_Translate(l2,-X(p2),-Y(p2)),pi()/2),X(p2),Y(p2));
				a2 = ST_Azimuth(ST_PointN(l2,1),ST_PointN(l2,2));
				l2 = ST_AddPoint(l2,ST_Makepoint(X(ST_PointN(l2,2))+sin(a2)*dist,Y(ST_PointN(l2,2))+cos(a2)*dist),-1);
				l2 = ST_AddPoint(l2,ST_Makepoint(X(ST_PointN(l2,1))-sin(a2)*dist,Y(ST_PointN(l2,1))-cos(a2)*dist),0);

				-- The new center is the intersection of the two bisectors
				center = ST_Intersection(l1,l2);
				-- The new radius is the distance to any of the three points
				radius = ST_Distance(center,ST_PointN(ring,idx1));
			END IF;
		END IF;
		END LOOP;
	--DONE!!  Return the MBC via the buffer command
	RETURN ST_Buffer(center,radius,segs_per_quarter);

	END;
$$;
 ]   DROP FUNCTION public.st_minimumboundingcircle(inputgeom geometry, segs_per_quarter integer);
       public       postgres    false    993    993    1031    3            �           1255    17191 "   st_minimumboundingcircle(geometry)    FUNCTION     �   CREATE FUNCTION st_minimumboundingcircle(geometry) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_MinimumBoundingCircle($1, 48)$_$;
 9   DROP FUNCTION public.st_minimumboundingcircle(geometry);
       public       postgres    false    3    993    993            S           1255    17078    st_mlinefromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_mlinefromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE
	WHEN geometrytype(GeomFromText($1, $2)) = 'MULTILINESTRING'
	THEN GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_mlinefromtext(text, integer);
       public       postgres    false    993    3            U           1255    17080    st_mlinefromtext(text)    FUNCTION     �   CREATE FUNCTION st_mlinefromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'MULTILINESTRING'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_mlinefromtext(text);
       public       postgres    false    3    993            �           1255    17140    st_mlinefromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_mlinefromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'MULTILINESTRING'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_mlinefromwkb(bytea, integer);
       public       postgres    false    993    3            �           1255    17142    st_mlinefromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_mlinefromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTILINESTRING'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_mlinefromwkb(bytea);
       public       postgres    false    993    3            [           1255    17086     st_mpointfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_mpointfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromText($1, $2)) = 'MULTIPOINT'
	THEN GeomFromText($1, $2)
	ELSE NULL END
	$_$;
 7   DROP FUNCTION public.st_mpointfromtext(text, integer);
       public       postgres    false    3    993            ]           1255    17088    st_mpointfromtext(text)    FUNCTION     �   CREATE FUNCTION st_mpointfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'MULTIPOINT'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 .   DROP FUNCTION public.st_mpointfromtext(text);
       public       postgres    false    993    3            �           1255    17129     st_mpointfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_mpointfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1, $2)) = 'MULTIPOINT'
	THEN GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 7   DROP FUNCTION public.st_mpointfromwkb(bytea, integer);
       public       postgres    false    993    3            �           1255    17131    st_mpointfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_mpointfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTIPOINT'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 .   DROP FUNCTION public.st_mpointfromwkb(bytea);
       public       postgres    false    993    3            b           1255    17093    st_mpolyfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_mpolyfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1, $2)) = 'MULTIPOLYGON'
	THEN ST_GeomFromText($1,$2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_mpolyfromtext(text, integer);
       public       postgres    false    3    993            d           1255    17095    st_mpolyfromtext(text)    FUNCTION     �   CREATE FUNCTION st_mpolyfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'MULTIPOLYGON'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_mpolyfromtext(text);
       public       postgres    false    993    3            �           1255    17144    st_mpolyfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_mpolyfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'MULTIPOLYGON'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_mpolyfromwkb(bytea, integer);
       public       postgres    false    993    3            �           1255    17146    st_mpolyfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_mpolyfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTIPOLYGON'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_mpolyfromwkb(bytea);
       public       postgres    false    3    993            �            1255    16654    st_multi(geometry)    FUNCTION     �   CREATE FUNCTION st_multi(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_force_multi';
 )   DROP FUNCTION public.st_multi(geometry);
       public       postgres    false    3    993    993            �           1255    17138    st_multilinefromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_multilinefromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTILINESTRING'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 1   DROP FUNCTION public.st_multilinefromwkb(bytea);
       public       postgres    false    993    3            W           1255    17082     st_multilinestringfromtext(text)    FUNCTION     �   CREATE FUNCTION st_multilinestringfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_MLineFromText($1)$_$;
 7   DROP FUNCTION public.st_multilinestringfromtext(text);
       public       postgres    false    3    993            Y           1255    17084 )   st_multilinestringfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_multilinestringfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT MLineFromText($1, $2)$_$;
 @   DROP FUNCTION public.st_multilinestringfromtext(text, integer);
       public       postgres    false    3    993            `           1255    17091    st_multipointfromtext(text)    FUNCTION     �   CREATE FUNCTION st_multipointfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT MPointFromText($1)$_$;
 2   DROP FUNCTION public.st_multipointfromtext(text);
       public       postgres    false    993    3            �           1255    17133 $   st_multipointfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_multipointfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1,$2)) = 'MULTIPOINT'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 ;   DROP FUNCTION public.st_multipointfromwkb(bytea, integer);
       public       postgres    false    3    993            �           1255    17135    st_multipointfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_multipointfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTIPOINT'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 2   DROP FUNCTION public.st_multipointfromwkb(bytea);
       public       postgres    false    993    3            �           1255    17148 #   st_multipolyfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_multipolyfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'MULTIPOLYGON'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 :   DROP FUNCTION public.st_multipolyfromwkb(bytea, integer);
       public       postgres    false    993    3            �           1255    17150    st_multipolyfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_multipolyfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'MULTIPOLYGON'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 1   DROP FUNCTION public.st_multipolyfromwkb(bytea);
       public       postgres    false    993    3            f           1255    17097 &   st_multipolygonfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_multipolygonfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT MPolyFromText($1, $2)$_$;
 =   DROP FUNCTION public.st_multipolygonfromtext(text, integer);
       public       postgres    false    3    993            h           1255    17099    st_multipolygonfromtext(text)    FUNCTION     �   CREATE FUNCTION st_multipolygonfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT MPolyFromText($1)$_$;
 4   DROP FUNCTION public.st_multipolygonfromtext(text);
       public       postgres    false    3    993            �            1255    16674    st_ndims(geometry)    FUNCTION     �   CREATE FUNCTION st_ndims(geometry) RETURNS smallint
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_ndims';
 )   DROP FUNCTION public.st_ndims(geometry);
       public       postgres    false    993    3            �            1255    16668    st_noop(geometry)    FUNCTION     v   CREATE FUNCTION st_noop(geometry) RETURNS geometry
    LANGUAGE c STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_noop';
 (   DROP FUNCTION public.st_noop(geometry);
       public       postgres    false    993    993    3            �            1255    16604    st_npoints(geometry)    FUNCTION     �   CREATE FUNCTION st_npoints(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_npoints';
 +   DROP FUNCTION public.st_npoints(geometry);
       public       postgres    false    993    3            �            1255    16606    st_nrings(geometry)    FUNCTION     �   CREATE FUNCTION st_nrings(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_nrings';
 *   DROP FUNCTION public.st_nrings(geometry);
       public       postgres    false    993    3                       1255    17008    st_numgeometries(geometry)    FUNCTION     �   CREATE FUNCTION st_numgeometries(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_numgeometries_collection';
 1   DROP FUNCTION public.st_numgeometries(geometry);
       public       postgres    false    3    993                       1255    17018    st_numinteriorring(geometry)    FUNCTION     �   CREATE FUNCTION st_numinteriorring(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_numinteriorrings_polygon';
 3   DROP FUNCTION public.st_numinteriorring(geometry);
       public       postgres    false    3    993                       1255    17016    st_numinteriorrings(geometry)    FUNCTION     �   CREATE FUNCTION st_numinteriorrings(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_numinteriorrings_polygon';
 4   DROP FUNCTION public.st_numinteriorrings(geometry);
       public       postgres    false    993    3                       1255    17006    st_numpoints(geometry)    FUNCTION     �   CREATE FUNCTION st_numpoints(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_numpoints_linestring';
 -   DROP FUNCTION public.st_numpoints(geometry);
       public       postgres    false    3    993            �           1255    17175 %   st_orderingequals(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_orderingequals(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ 
	SELECT $1 && $2 AND $1 ~= $2
	$_$;
 <   DROP FUNCTION public.st_orderingequals(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16959    st_overlaps(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_overlaps(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 && $2 AND _ST_Overlaps($1,$2)$_$;
 6   DROP FUNCTION public.st_overlaps(geometry, geometry);
       public       postgres    false    3    993    993            �            1255    16624    st_perimeter(geometry)    FUNCTION     �   CREATE FUNCTION st_perimeter(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_perimeter2d_poly';
 -   DROP FUNCTION public.st_perimeter(geometry);
       public       postgres    false    3    993            �            1255    16622    st_perimeter2d(geometry)    FUNCTION     �   CREATE FUNCTION st_perimeter2d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_perimeter2d_poly';
 /   DROP FUNCTION public.st_perimeter2d(geometry);
       public       postgres    false    3    993            �            1255    16620    st_perimeter3d(geometry)    FUNCTION     �   CREATE FUNCTION st_perimeter3d(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_perimeter_poly';
 /   DROP FUNCTION public.st_perimeter3d(geometry);
       public       postgres    false    993    3            �           1255    17178 ,   st_point(double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_point(double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_makepoint';
 C   DROP FUNCTION public.st_point(double precision, double precision);
       public       postgres    false    993    3            �            1255    16638 V   st_point_inside_circle(geometry, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_point_inside_circle(geometry, double precision, double precision, double precision) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_inside_circle_point';
 m   DROP FUNCTION public.st_point_inside_circle(geometry, double precision, double precision, double precision);
       public       postgres    false    3    993            A           1255    17060    st_pointfromtext(text)    FUNCTION     �   CREATE FUNCTION st_pointfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'POINT'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_pointfromtext(text);
       public       postgres    false    3    993            C           1255    17062    st_pointfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_pointfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1, $2)) = 'POINT'
	THEN ST_GeomFromText($1, $2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_pointfromtext(text, integer);
       public       postgres    false    3    993            r           1255    17109    st_pointfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_pointfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'POINT'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 6   DROP FUNCTION public.st_pointfromwkb(bytea, integer);
       public       postgres    false    3    993            t           1255    17111    st_pointfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_pointfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'POINT'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 -   DROP FUNCTION public.st_pointfromwkb(bytea);
       public       postgres    false    993    3                       1255    17024    st_pointn(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_pointn(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_pointn_linestring';
 3   DROP FUNCTION public.st_pointn(geometry, integer);
       public       postgres    false    3    993    993            �           1255    16968    st_pointonsurface(geometry)    FUNCTION     �   CREATE FUNCTION st_pointonsurface(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'pointonsurface';
 2   DROP FUNCTION public.st_pointonsurface(geometry);
       public       postgres    false    3    993    993            K           1255    17070    st_polyfromtext(text)    FUNCTION     �   CREATE FUNCTION st_polyfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1)) = 'POLYGON'
	THEN ST_GeomFromText($1)
	ELSE NULL END
	$_$;
 ,   DROP FUNCTION public.st_polyfromtext(text);
       public       postgres    false    3    993            M           1255    17072    st_polyfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_polyfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromText($1, $2)) = 'POLYGON'
	THEN ST_GeomFromText($1, $2)
	ELSE NULL END
	$_$;
 5   DROP FUNCTION public.st_polyfromtext(text, integer);
       public       postgres    false    3    993            ~           1255    17121    st_polyfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_polyfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1, $2)) = 'POLYGON'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 5   DROP FUNCTION public.st_polyfromwkb(bytea, integer);
       public       postgres    false    993    3            �           1255    17123    st_polyfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_polyfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1)) = 'POLYGON'
	THEN ST_GeomFromWKB($1)
	ELSE NULL END
	$_$;
 ,   DROP FUNCTION public.st_polyfromwkb(bytea);
       public       postgres    false    3    993            �           1255    17181    st_polygon(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_polygon(geometry, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$ 
	SELECT setSRID(makepolygon($1), $2)
	$_$;
 4   DROP FUNCTION public.st_polygon(geometry, integer);
       public       postgres    false    993    993    3            O           1255    17074 !   st_polygonfromtext(text, integer)    FUNCTION     �   CREATE FUNCTION st_polygonfromtext(text, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT PolyFromText($1, $2)$_$;
 8   DROP FUNCTION public.st_polygonfromtext(text, integer);
       public       postgres    false    3    993            Q           1255    17076    st_polygonfromtext(text)    FUNCTION     �   CREATE FUNCTION st_polygonfromtext(text) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_PolyFromText($1)$_$;
 /   DROP FUNCTION public.st_polygonfromtext(text);
       public       postgres    false    3    993            �           1255    17125 !   st_polygonfromwkb(bytea, integer)    FUNCTION     �   CREATE FUNCTION st_polygonfromwkb(bytea, integer) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(ST_GeomFromWKB($1,$2)) = 'POLYGON'
	THEN ST_GeomFromWKB($1, $2)
	ELSE NULL END
	$_$;
 8   DROP FUNCTION public.st_polygonfromwkb(bytea, integer);
       public       postgres    false    993    3            �           1255    17127    st_polygonfromwkb(bytea)    FUNCTION     �   CREATE FUNCTION st_polygonfromwkb(bytea) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
	SELECT CASE WHEN geometrytype(GeomFromWKB($1)) = 'POLYGON'
	THEN GeomFromWKB($1)
	ELSE NULL END
	$_$;
 /   DROP FUNCTION public.st_polygonfromwkb(bytea);
       public       postgres    false    3    993            ,           1255    16726    st_polygonize(geometry[])    FUNCTION     �   CREATE FUNCTION st_polygonize(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'polygonize_garray';
 0   DROP FUNCTION public.st_polygonize(geometry[]);
       public       postgres    false    3    993    995            +           1255    16725     st_polygonize_garray(geometry[])    FUNCTION     �   CREATE FUNCTION st_polygonize_garray(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'polygonize_garray';
 7   DROP FUNCTION public.st_polygonize_garray(geometry[]);
       public       postgres    false    995    993    3            x            1255    16513 :   st_postgis_gist_joinsel(internal, oid, internal, smallint)    FUNCTION     �   CREATE FUNCTION st_postgis_gist_joinsel(internal, oid, internal, smallint) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_joinsel';
 Q   DROP FUNCTION public.st_postgis_gist_joinsel(internal, oid, internal, smallint);
       public       postgres    false    3            v            1255    16511 5   st_postgis_gist_sel(internal, oid, internal, integer)    FUNCTION     �   CREATE FUNCTION st_postgis_gist_sel(internal, oid, internal, integer) RETURNS double precision
    LANGUAGE c
    AS '$libdir/postgis-1.4', 'LWGEOM_gist_sel';
 L   DROP FUNCTION public.st_postgis_gist_sel(internal, oid, internal, integer);
       public       postgres    false    3            �           1255    16929    st_relate(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_relate(geometry, geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'relate_full';
 4   DROP FUNCTION public.st_relate(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    16931 #   st_relate(geometry, geometry, text)    FUNCTION     �   CREATE FUNCTION st_relate(geometry, geometry, text) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'relate_pattern';
 :   DROP FUNCTION public.st_relate(geometry, geometry, text);
       public       postgres    false    3    993    993            !           1255    16715 !   st_removepoint(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_removepoint(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_removepoint';
 8   DROP FUNCTION public.st_removepoint(geometry, integer);
       public       postgres    false    3    993    993            �            1255    16664    st_reverse(geometry)    FUNCTION     �   CREATE FUNCTION st_reverse(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_reverse';
 +   DROP FUNCTION public.st_reverse(geometry);
       public       postgres    false    993    993    3            )            1255    16413 %   st_rotate(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_rotate(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT rotateZ($1, $2)$_$;
 <   DROP FUNCTION public.st_rotate(geometry, double precision);
       public       postgres    false    3    993    993            +            1255    16415 &   st_rotatex(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_rotatex(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1, 1, 0, 0, 0, cos($2), -sin($2), 0, sin($2), cos($2), 0, 0, 0)$_$;
 =   DROP FUNCTION public.st_rotatex(geometry, double precision);
       public       postgres    false    3    993    993            -            1255    16417 &   st_rotatey(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_rotatey(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1,  cos($2), 0, sin($2),  0, 1, 0,  -sin($2), 0, cos($2), 0,  0, 0)$_$;
 =   DROP FUNCTION public.st_rotatey(geometry, double precision);
       public       postgres    false    3    993    993            '            1255    16411 &   st_rotatez(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_rotatez(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1,  cos($2), -sin($2), 0,  sin($2), cos($2), 0,  0, 0, 1,  0, 0, 0)$_$;
 =   DROP FUNCTION public.st_rotatez(geometry, double precision);
       public       postgres    false    993    3    993            3            1255    16423 H   st_scale(geometry, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_scale(geometry, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1,  $2, 0, 0,  0, $3, 0,  0, 0, $4,  0, 0, 0)$_$;
 _   DROP FUNCTION public.st_scale(geometry, double precision, double precision, double precision);
       public       postgres    false    993    3    993            5            1255    16425 6   st_scale(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_scale(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT scale($1, $2, $3, 1)$_$;
 M   DROP FUNCTION public.st_scale(geometry, double precision, double precision);
       public       postgres    false    993    993    3            �           1255    16857 )   st_segmentize(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_segmentize(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_segmentize2d';
 @   DROP FUNCTION public.st_segmentize(geometry, double precision);
       public       postgres    false    3    993    993            �            1255    16598    st_setfactor(chip, real)    FUNCTION     �   CREATE FUNCTION st_setfactor(chip, real) RETURNS chip
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_setFactor';
 /   DROP FUNCTION public.st_setfactor(chip, real);
       public       postgres    false    1002    3    1002            #           1255    16717 (   st_setpoint(geometry, integer, geometry)    FUNCTION     �   CREATE FUNCTION st_setpoint(geometry, integer, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_setpoint_linestring';
 ?   DROP FUNCTION public.st_setpoint(geometry, integer, geometry);
       public       postgres    false    3    993    993    993            1           1255    17044    st_setsrid(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_setsrid(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_setSRID';
 4   DROP FUNCTION public.st_setsrid(geometry, integer);
       public       postgres    false    993    3    993            9            1255    16429    st_shift_longitude(geometry)    FUNCTION     �   CREATE FUNCTION st_shift_longitude(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_longitude_shift';
 3   DROP FUNCTION public.st_shift_longitude(geometry);
       public       postgres    false    993    993    3                       1255    16847 '   st_simplify(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_simplify(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_simplify2d';
 >   DROP FUNCTION public.st_simplify(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16879 7   st_simplifypreservetopology(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_simplifypreservetopology(geometry, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'topologypreservesimplify';
 N   DROP FUNCTION public.st_simplifypreservetopology(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16849 _   st_snaptogrid(geometry, double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_snaptogrid(geometry, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_snaptogrid';
 v   DROP FUNCTION public.st_snaptogrid(geometry, double precision, double precision, double precision, double precision);
       public       postgres    false    3    993    993            �           1255    16851 ;   st_snaptogrid(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_snaptogrid(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_SnapToGrid($1, 0, 0, $2, $3)$_$;
 R   DROP FUNCTION public.st_snaptogrid(geometry, double precision, double precision);
       public       postgres    false    3    993    993            O           1255    16853 )   st_snaptogrid(geometry, double precision)    FUNCTION     �   CREATE FUNCTION st_snaptogrid(geometry, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT ST_SnapToGrid($1, 0, 0, $2, $2)$_$;
 @   DROP FUNCTION public.st_snaptogrid(geometry, double precision);
       public       postgres    false    3    993    993            �           1255    16855 i   st_snaptogrid(geometry, geometry, double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_snaptogrid(geometry, geometry, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_snaptogrid_pointoff';
 �   DROP FUNCTION public.st_snaptogrid(geometry, geometry, double precision, double precision, double precision, double precision);
       public       postgres    false    3    993    993    993            �            1255    16585    st_srid(chip)    FUNCTION     |   CREATE FUNCTION st_srid(chip) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getSRID';
 $   DROP FUNCTION public.st_srid(chip);
       public       postgres    false    1002    3            /           1255    17042    st_srid(geometry)    FUNCTION     �   CREATE FUNCTION st_srid(geometry) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_getSRID';
 (   DROP FUNCTION public.st_srid(geometry);
       public       postgres    false    993    3            '           1255    17034    st_startpoint(geometry)    FUNCTION     �   CREATE FUNCTION st_startpoint(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_startpoint_linestring';
 .   DROP FUNCTION public.st_startpoint(geometry);
       public       postgres    false    993    3    993            �            1255    16602    st_summary(geometry)    FUNCTION     �   CREATE FUNCTION st_summary(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_summary';
 +   DROP FUNCTION public.st_summary(geometry);
       public       postgres    false    3    993            �           1255    16886 $   st_symdifference(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_symdifference(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'symdifference';
 ;   DROP FUNCTION public.st_symdifference(geometry, geometry);
       public       postgres    false    3    993    993    993            �           1255    16888 *   st_symmetricdifference(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_symmetricdifference(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'symdifference';
 A   DROP FUNCTION public.st_symmetricdifference(geometry, geometry);
       public       postgres    false    3    993    993    993            p           1255    16816    st_text(geometry)    FUNCTION        CREATE FUNCTION st_text(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_text';
 (   DROP FUNCTION public.st_text(geometry);
       public       postgres    false    3    993            �           1255    16936    st_touches(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_touches(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 && $2 AND _ST_Touches($1,$2)$_$;
 5   DROP FUNCTION public.st_touches(geometry, geometry);
       public       postgres    false    3    993    993            ]           1255    16792    st_transform(geometry, integer)    FUNCTION     �   CREATE FUNCTION st_transform(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'transform';
 6   DROP FUNCTION public.st_transform(geometry, integer);
       public       postgres    false    3    993    993            /            1255    16419 L   st_translate(geometry, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_translate(geometry, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1, 1, 0, 0, 0, 1, 0, 0, 0, 1, $2, $3, $4)$_$;
 c   DROP FUNCTION public.st_translate(geometry, double precision, double precision, double precision);
       public       postgres    false    3    993    993            1            1255    16421 :   st_translate(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_translate(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT translate($1, $2, $3, 0)$_$;
 Q   DROP FUNCTION public.st_translate(geometry, double precision, double precision);
       public       postgres    false    993    993    3            7            1255    16427 _   st_transscale(geometry, double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION st_transscale(geometry, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1,  $4, 0, 0,  0, $5, 0, 
		0, 0, 1,  $2 * $4, $3 * $5, 0)$_$;
 v   DROP FUNCTION public.st_transscale(geometry, double precision, double precision, double precision, double precision);
       public       postgres    false    993    3    993            �           1255    16890    st_union(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_union(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'geomunion';
 3   DROP FUNCTION public.st_union(geometry, geometry);
       public       postgres    false    3    993    993    993            �           1255    16920    st_union(geometry[])    FUNCTION     �   CREATE FUNCTION st_union(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'pgis_union_geometry_array';
 +   DROP FUNCTION public.st_union(geometry[]);
       public       postgres    false    3    993    995            �           1255    16919    st_unite_garray(geometry[])    FUNCTION     �   CREATE FUNCTION st_unite_garray(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'pgis_union_geometry_array';
 2   DROP FUNCTION public.st_unite_garray(geometry[]);
       public       postgres    false    3    993    995            �            1255    16591    st_width(chip)    FUNCTION     ~   CREATE FUNCTION st_width(chip) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getWidth';
 %   DROP FUNCTION public.st_width(chip);
       public       postgres    false    3    1002            �           1255    16947    st_within(geometry, geometry)    FUNCTION     �   CREATE FUNCTION st_within(geometry, geometry) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$SELECT $1 && $2 AND _ST_Within($1,$2)$_$;
 4   DROP FUNCTION public.st_within(geometry, geometry);
       public       postgres    false    3    993    993            �           1255    17173    st_wkbtosql(bytea)    FUNCTION     �   CREATE FUNCTION st_wkbtosql(bytea) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_WKB';
 )   DROP FUNCTION public.st_wkbtosql(bytea);
       public       postgres    false    3    993            �           1255    17172    st_wkttosql(text)    FUNCTION     �   CREATE FUNCTION st_wkttosql(text) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_from_text';
 (   DROP FUNCTION public.st_wkttosql(text);
       public       postgres    false    3    993                       1255    17026    st_x(geometry)    FUNCTION     �   CREATE FUNCTION st_x(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_x_point';
 %   DROP FUNCTION public.st_x(geometry);
       public       postgres    false    3    993            J            1255    16451    st_xmax(box3d)    FUNCTION     �   CREATE FUNCTION st_xmax(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_xmax';
 %   DROP FUNCTION public.st_xmax(box3d);
       public       postgres    false    3    996            D            1255    16445    st_xmin(box3d)    FUNCTION     �   CREATE FUNCTION st_xmin(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_xmin';
 %   DROP FUNCTION public.st_xmin(box3d);
       public       postgres    false    3    996            !           1255    17028    st_y(geometry)    FUNCTION     �   CREATE FUNCTION st_y(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_y_point';
 %   DROP FUNCTION public.st_y(geometry);
       public       postgres    false    993    3            L            1255    16453    st_ymax(box3d)    FUNCTION     �   CREATE FUNCTION st_ymax(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_ymax';
 %   DROP FUNCTION public.st_ymax(box3d);
       public       postgres    false    3    996            F            1255    16447    st_ymin(box3d)    FUNCTION     �   CREATE FUNCTION st_ymin(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_ymin';
 %   DROP FUNCTION public.st_ymin(box3d);
       public       postgres    false    3    996            #           1255    17030    st_z(geometry)    FUNCTION     �   CREATE FUNCTION st_z(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_z_point';
 %   DROP FUNCTION public.st_z(geometry);
       public       postgres    false    3    993            N            1255    16455    st_zmax(box3d)    FUNCTION     �   CREATE FUNCTION st_zmax(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_zmax';
 %   DROP FUNCTION public.st_zmax(box3d);
       public       postgres    false    3    996            �            1255    16670    st_zmflag(geometry)    FUNCTION     �   CREATE FUNCTION st_zmflag(geometry) RETURNS smallint
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_zmflag';
 *   DROP FUNCTION public.st_zmflag(geometry);
       public       postgres    false    993    3            H            1255    16449    st_zmin(box3d)    FUNCTION     �   CREATE FUNCTION st_zmin(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_zmin';
 %   DROP FUNCTION public.st_zmin(box3d);
       public       postgres    false    3    996            &           1255    17033    startpoint(geometry)    FUNCTION     �   CREATE FUNCTION startpoint(geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_startpoint_linestring';
 +   DROP FUNCTION public.startpoint(geometry);
       public       postgres    false    993    993    3            �            1255    16601    summary(geometry)    FUNCTION        CREATE FUNCTION summary(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_summary';
 (   DROP FUNCTION public.summary(geometry);
       public       postgres    false    3    993            �           1255    16885 !   symdifference(geometry, geometry)    FUNCTION     �   CREATE FUNCTION symdifference(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'symdifference';
 8   DROP FUNCTION public.symdifference(geometry, geometry);
       public       postgres    false    3    993    993    993            �           1255    16887 '   symmetricdifference(geometry, geometry)    FUNCTION     �   CREATE FUNCTION symmetricdifference(geometry, geometry) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'symdifference';
 >   DROP FUNCTION public.symmetricdifference(geometry, geometry);
       public       postgres    false    3    993    993    993            o           1255    16815    text(geometry)    FUNCTION     |   CREATE FUNCTION text(geometry) RETURNS text
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_to_text';
 %   DROP FUNCTION public.text(geometry);
       public       postgres    false    3    993            �           1255    16934    touches(geometry, geometry)    FUNCTION     �   CREATE FUNCTION touches(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'touches';
 2   DROP FUNCTION public.touches(geometry, geometry);
       public       postgres    false    3    993    993            \           1255    16791    transform(geometry, integer)    FUNCTION     �   CREATE FUNCTION transform(geometry, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'transform';
 3   DROP FUNCTION public.transform(geometry, integer);
       public       postgres    false    3    993    993            [           1255    16790 1   transform_geometry(geometry, text, text, integer)    FUNCTION     �   CREATE FUNCTION transform_geometry(geometry, text, text, integer) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'transform_geom';
 H   DROP FUNCTION public.transform_geometry(geometry, text, text, integer);
       public       postgres    false    3    993    993            .            1255    16418 I   translate(geometry, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION translate(geometry, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1, 1, 0, 0, 0, 1, 0, 0, 0, 1, $2, $3, $4)$_$;
 `   DROP FUNCTION public.translate(geometry, double precision, double precision, double precision);
       public       postgres    false    993    3    993            0            1255    16420 7   translate(geometry, double precision, double precision)    FUNCTION     �   CREATE FUNCTION translate(geometry, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT translate($1, $2, $3, 0)$_$;
 N   DROP FUNCTION public.translate(geometry, double precision, double precision);
       public       postgres    false    3    993    993            6            1255    16426 \   transscale(geometry, double precision, double precision, double precision, double precision)    FUNCTION     �   CREATE FUNCTION transscale(geometry, double precision, double precision, double precision, double precision) RETURNS geometry
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$SELECT affine($1,  $4, 0, 0,  0, $5, 0, 
		0, 0, 1,  $2 * $4, $3 * $5, 0)$_$;
 s   DROP FUNCTION public.transscale(geometry, double precision, double precision, double precision, double precision);
       public       postgres    false    993    993    3            �           1255    16918    unite_garray(geometry[])    FUNCTION     �   CREATE FUNCTION unite_garray(geometry[]) RETURNS geometry
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'pgis_union_geometry_array';
 /   DROP FUNCTION public.unite_garray(geometry[]);
       public       postgres    false    3    993    995            �           1255    17159    unlockrows(text)    FUNCTION     �  CREATE FUNCTION unlockrows(text) RETURNS integer
    LANGUAGE plpgsql STRICT
    AS $_$ 
DECLARE
	ret int;
BEGIN

	IF NOT LongTransactionsEnabled() THEN
		RAISE EXCEPTION 'Long transaction support disabled, use EnableLongTransaction() to enable.';
	END IF;

	EXECUTE 'DELETE FROM authorization_table where authid = ' ||
		quote_literal($1);

	GET DIAGNOSTICS ret = ROW_COUNT;

	RETURN ret;
END;
$_$;
 '   DROP FUNCTION public.unlockrows(text);
       public       postgres    false    3    1031            V           1255    16785 g   updategeometrysrid(character varying, character varying, character varying, character varying, integer)    FUNCTION     �  CREATE FUNCTION updategeometrysrid(character varying, character varying, character varying, character varying, integer) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
	catalog_name alias for $1; 
	schema_name alias for $2;
	table_name alias for $3;
	column_name alias for $4;
	new_srid alias for $5;
	myrec RECORD;
	okay boolean;
	cname varchar;
	real_schema name;

BEGIN


	-- Find, check or fix schema_name
	IF ( schema_name != '' ) THEN
		okay = 'f';

		FOR myrec IN SELECT nspname FROM pg_namespace WHERE text(nspname) = schema_name LOOP
			okay := 't';
		END LOOP;

		IF ( okay <> 't' ) THEN
			RAISE EXCEPTION 'Invalid schema name';
		ELSE
			real_schema = schema_name;
		END IF;
	ELSE
		SELECT INTO real_schema current_schema()::text;
	END IF;

 	-- Find out if the column is in the geometry_columns table
	okay = 'f';
	FOR myrec IN SELECT * from geometry_columns where f_table_schema = text(real_schema) and f_table_name = table_name and f_geometry_column = column_name LOOP
		okay := 't';
	END LOOP; 
	IF (okay <> 't') THEN 
		RAISE EXCEPTION 'column not found in geometry_columns table';
		RETURN 'f';
	END IF;

	-- Update ref from geometry_columns table
	EXECUTE 'UPDATE geometry_columns SET SRID = ' || new_srid::text || 
		' where f_table_schema = ' ||
		quote_literal(real_schema) || ' and f_table_name = ' ||
		quote_literal(table_name)  || ' and f_geometry_column = ' ||
		quote_literal(column_name);
	
	-- Make up constraint name
	cname = 'enforce_srid_'  || column_name;

	-- Drop enforce_srid constraint
	EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) ||
		'.' || quote_ident(table_name) ||
		' DROP constraint ' || quote_ident(cname);

	-- Update geometries SRID
	EXECUTE 'UPDATE ' || quote_ident(real_schema) ||
		'.' || quote_ident(table_name) ||
		' SET ' || quote_ident(column_name) ||
		' = setSRID(' || quote_ident(column_name) ||
		', ' || new_srid::text || ')';

	-- Reset enforce_srid constraint
	EXECUTE 'ALTER TABLE ' || quote_ident(real_schema) ||
		'.' || quote_ident(table_name) ||
		' ADD constraint ' || quote_ident(cname) ||
		' CHECK (srid(' || quote_ident(column_name) ||
		') = ' || new_srid::text || ')';

	RETURN real_schema || '.' || table_name || '.' || column_name ||' SRID changed to ' || new_srid::text;
	
END;
$_$;
 ~   DROP FUNCTION public.updategeometrysrid(character varying, character varying, character varying, character varying, integer);
       public       postgres    false    3    1031            W           1255    16786 T   updategeometrysrid(character varying, character varying, character varying, integer)    FUNCTION        CREATE FUNCTION updategeometrysrid(character varying, character varying, character varying, integer) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$ 
DECLARE
	ret  text;
BEGIN
	SELECT UpdateGeometrySRID('',$1,$2,$3,$4) into ret;
	RETURN ret;
END;
$_$;
 k   DROP FUNCTION public.updategeometrysrid(character varying, character varying, character varying, integer);
       public       postgres    false    3    1031            X           1255    16787 A   updategeometrysrid(character varying, character varying, integer)    FUNCTION     �   CREATE FUNCTION updategeometrysrid(character varying, character varying, integer) RETURNS text
    LANGUAGE plpgsql STRICT
    AS $_$ 
DECLARE
	ret  text;
BEGIN
	SELECT UpdateGeometrySRID('','',$1,$2,$3) into ret;
	RETURN ret;
END;
$_$;
 X   DROP FUNCTION public.updategeometrysrid(character varying, character varying, integer);
       public       postgres    false    3    1031            �            1255    16590    width(chip)    FUNCTION     {   CREATE FUNCTION width(chip) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'CHIP_getWidth';
 "   DROP FUNCTION public.width(chip);
       public       postgres    false    3    1002            �           1255    16945    within(geometry, geometry)    FUNCTION     �   CREATE FUNCTION within(geometry, geometry) RETURNS boolean
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'within';
 1   DROP FUNCTION public.within(geometry, geometry);
       public       postgres    false    3    993    993                       1255    17025    x(geometry)    FUNCTION     �   CREATE FUNCTION x(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_x_point';
 "   DROP FUNCTION public.x(geometry);
       public       postgres    false    3    993            I            1255    16450    xmax(box3d)    FUNCTION     �   CREATE FUNCTION xmax(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_xmax';
 "   DROP FUNCTION public.xmax(box3d);
       public       postgres    false    3    996            C            1255    16444    xmin(box3d)    FUNCTION     �   CREATE FUNCTION xmin(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_xmin';
 "   DROP FUNCTION public.xmin(box3d);
       public       postgres    false    3    996                        1255    17027    y(geometry)    FUNCTION     �   CREATE FUNCTION y(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_y_point';
 "   DROP FUNCTION public.y(geometry);
       public       postgres    false    993    3            K            1255    16452    ymax(box3d)    FUNCTION     �   CREATE FUNCTION ymax(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_ymax';
 "   DROP FUNCTION public.ymax(box3d);
       public       postgres    false    3    996            E            1255    16446    ymin(box3d)    FUNCTION     �   CREATE FUNCTION ymin(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_ymin';
 "   DROP FUNCTION public.ymin(box3d);
       public       postgres    false    3    996            "           1255    17029    z(geometry)    FUNCTION     �   CREATE FUNCTION z(geometry) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_z_point';
 "   DROP FUNCTION public.z(geometry);
       public       postgres    false    3    993            M            1255    16454    zmax(box3d)    FUNCTION     �   CREATE FUNCTION zmax(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_zmax';
 "   DROP FUNCTION public.zmax(box3d);
       public       postgres    false    3    996            �            1255    16669    zmflag(geometry)    FUNCTION     �   CREATE FUNCTION zmflag(geometry) RETURNS smallint
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'LWGEOM_zmflag';
 '   DROP FUNCTION public.zmflag(geometry);
       public       postgres    false    3    993            G            1255    16448    zmin(box3d)    FUNCTION     �   CREATE FUNCTION zmin(box3d) RETURNS double precision
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/postgis-1.4', 'BOX3D_zmin';
 "   DROP FUNCTION public.zmin(box3d);
       public       postgres    false    3    996                       1255    16914    accum(geometry) 	   AGGREGATE     �   CREATE AGGREGATE accum(geometry) (
    SFUNC = pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_accum_finalfn
);
 '   DROP AGGREGATE public.accum(geometry);
       public       postgres    false    3    995    993    436    437                       1255    16916    accum_old(geometry) 	   AGGREGATE     \   CREATE AGGREGATE accum_old(geometry) (
    SFUNC = st_geom_accum,
    STYPE = geometry[]
);
 +   DROP AGGREGATE public.accum_old(geometry);
       public       postgres    false    3    995    993    430                       1255    16922    collect(geometry) 	   AGGREGATE     �   CREATE AGGREGATE collect(geometry) (
    SFUNC = pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_collect_finalfn
);
 )   DROP AGGREGATE public.collect(geometry);
       public       postgres    false    3    993    993    436    439                       1255    16740    extent(geometry) 	   AGGREGATE     d   CREATE AGGREGATE extent(geometry) (
    SFUNC = public.st_combine_bbox,
    STYPE = box3d_extent
);
 (   DROP AGGREGATE public.extent(geometry);
       public       postgres    false    3    999    993    310            
           1255    16744    extent3d(geometry) 	   AGGREGATE     \   CREATE AGGREGATE extent3d(geometry) (
    SFUNC = public.combine_bbox,
    STYPE = box3d
);
 *   DROP AGGREGATE public.extent3d(geometry);
       public       postgres    false    3    996    993    311                       1255    16926    makeline(geometry) 	   AGGREGATE     �   CREATE AGGREGATE makeline(geometry) (
    SFUNC = pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_makeline_finalfn
);
 *   DROP AGGREGATE public.makeline(geometry);
       public       postgres    false    3    993    993    436    441                       1255    16895    memcollect(geometry) 	   AGGREGATE     _   CREATE AGGREGATE memcollect(geometry) (
    SFUNC = public.st_collect,
    STYPE = geometry
);
 ,   DROP AGGREGATE public.memcollect(geometry);
       public       postgres    false    3    993    993    428                       1255    16902    memgeomunion(geometry) 	   AGGREGATE     Y   CREATE AGGREGATE memgeomunion(geometry) (
    SFUNC = geomunion,
    STYPE = geometry
);
 .   DROP AGGREGATE public.memgeomunion(geometry);
       public       postgres    false    3    993    993    423                       1255    16924    polygonize(geometry) 	   AGGREGATE     �   CREATE AGGREGATE polygonize(geometry) (
    SFUNC = pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_polygonize_finalfn
);
 ,   DROP AGGREGATE public.polygonize(geometry);
       public       postgres    false    3    993    993    436    440                       1255    16915    st_accum(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_accum(geometry) (
    SFUNC = pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_accum_finalfn
);
 *   DROP AGGREGATE public.st_accum(geometry);
       public       postgres    false    3    995    993    436    437                       1255    16917    st_accum_old(geometry) 	   AGGREGATE     _   CREATE AGGREGATE st_accum_old(geometry) (
    SFUNC = st_geom_accum,
    STYPE = geometry[]
);
 .   DROP AGGREGATE public.st_accum_old(geometry);
       public       postgres    false    3    995    993    430                       1255    16923    st_collect(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_collect(geometry) (
    SFUNC = pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_collect_finalfn
);
 ,   DROP AGGREGATE public.st_collect(geometry);
       public       postgres    false    3    993    993    436    439            	           1255    16741    st_extent(geometry) 	   AGGREGATE     g   CREATE AGGREGATE st_extent(geometry) (
    SFUNC = public.st_combine_bbox,
    STYPE = box3d_extent
);
 +   DROP AGGREGATE public.st_extent(geometry);
       public       postgres    false    3    999    993    310                       1255    16745    st_extent3d(geometry) 	   AGGREGATE     b   CREATE AGGREGATE st_extent3d(geometry) (
    SFUNC = public.st_combine_bbox,
    STYPE = box3d
);
 -   DROP AGGREGATE public.st_extent3d(geometry);
       public       postgres    false    3    996    993    312                       1255    16927    st_makeline(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_makeline(geometry) (
    SFUNC = pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_makeline_finalfn
);
 -   DROP AGGREGATE public.st_makeline(geometry);
       public       postgres    false    3    993    993    436    441                       1255    16896    st_memcollect(geometry) 	   AGGREGATE     b   CREATE AGGREGATE st_memcollect(geometry) (
    SFUNC = public.st_collect,
    STYPE = geometry
);
 /   DROP AGGREGATE public.st_memcollect(geometry);
       public       postgres    false    3    993    993    428                       1255    16903    st_memunion(geometry) 	   AGGREGATE     ^   CREATE AGGREGATE st_memunion(geometry) (
    SFUNC = public.st_union,
    STYPE = geometry
);
 -   DROP AGGREGATE public.st_memunion(geometry);
       public       postgres    false    3    993    993    424                       1255    16925    st_polygonize(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_polygonize(geometry) (
    SFUNC = pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_polygonize_finalfn
);
 /   DROP AGGREGATE public.st_polygonize(geometry);
       public       postgres    false    3    993    993    436    440                       1255    16921    st_union(geometry) 	   AGGREGATE     �   CREATE AGGREGATE st_union(geometry) (
    SFUNC = pgis_geometry_accum_transfn,
    STYPE = pgis_abs,
    FINALFUNC = pgis_geometry_union_finalfn
);
 *   DROP AGGREGATE public.st_union(geometry);
       public       postgres    false    3    993    993    436    438            �           2617    16546    &&    OPERATOR     �   CREATE OPERATOR && (
    PROCEDURE = st_geometry_overlap,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = &&,
    RESTRICT = st_postgis_gist_sel,
    JOIN = st_postgis_gist_joinsel
);
 .   DROP OPERATOR public.&& (geometry, geometry);
       public       postgres    false    993    993    120    3    118    142            �           2617    16541    &<    OPERATOR     �   CREATE OPERATOR &< (
    PROCEDURE = st_geometry_overleft,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = &>,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 .   DROP OPERATOR public.&< (geometry, geometry);
       public       postgres    false    122    3    993    993            �           2617    16545    &<|    OPERATOR     �   CREATE OPERATOR &<| (
    PROCEDURE = st_geometry_overbelow,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = |&>,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 /   DROP OPERATOR public.&<| (geometry, geometry);
       public       postgres    false    128    3    993    993            �           2617    16540    &>    OPERATOR     �   CREATE OPERATOR &> (
    PROCEDURE = st_geometry_overright,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = &<,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 .   DROP OPERATOR public.&> (geometry, geometry);
       public       postgres    false    3    124    993    993            �           2617    16499    <    OPERATOR     �   CREATE OPERATOR < (
    PROCEDURE = st_geometry_lt,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = >,
    NEGATOR = >=,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 -   DROP OPERATOR public.< (geometry, geometry);
       public       postgres    false    993    106    3    993            �           2617    16539    <<    OPERATOR     �   CREATE OPERATOR << (
    PROCEDURE = st_geometry_left,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = >>,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 .   DROP OPERATOR public.<< (geometry, geometry);
       public       postgres    false    3    130    993    993            �           2617    16543    <<|    OPERATOR     �   CREATE OPERATOR <<| (
    PROCEDURE = st_geometry_below,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = |>>,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 /   DROP OPERATOR public.<<| (geometry, geometry);
       public       postgres    false    3    993    136    993            �           2617    16500    <=    OPERATOR     �   CREATE OPERATOR <= (
    PROCEDURE = st_geometry_le,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = >=,
    NEGATOR = >,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 .   DROP OPERATOR public.<= (geometry, geometry);
       public       postgres    false    108    3    993    993            �           2617    16501    =    OPERATOR     �   CREATE OPERATOR = (
    PROCEDURE = st_geometry_eq,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = =,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 -   DROP OPERATOR public.= (geometry, geometry);
       public       postgres    false    114    993    993    3            �           2617    16497    >    OPERATOR     �   CREATE OPERATOR > (
    PROCEDURE = st_geometry_gt,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <,
    NEGATOR = <=,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 -   DROP OPERATOR public.> (geometry, geometry);
       public       postgres    false    993    3    110    993            �           2617    16498    >=    OPERATOR     �   CREATE OPERATOR >= (
    PROCEDURE = st_geometry_ge,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <=,
    NEGATOR = <,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 .   DROP OPERATOR public.>= (geometry, geometry);
       public       postgres    false    993    3    993    112            �           2617    16538    >>    OPERATOR     �   CREATE OPERATOR >> (
    PROCEDURE = st_geometry_right,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <<,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 .   DROP OPERATOR public.>> (geometry, geometry);
       public       postgres    false    132    993    993    3            �           2617    16549    @    OPERATOR     �   CREATE OPERATOR @ (
    PROCEDURE = st_geometry_contained,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = ~,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 -   DROP OPERATOR public.@ (geometry, geometry);
       public       postgres    false    993    140    993    3            �           2617    16544    |&>    OPERATOR     �   CREATE OPERATOR |&> (
    PROCEDURE = st_geometry_overabove,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = &<|,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 /   DROP OPERATOR public.|&> (geometry, geometry);
       public       postgres    false    993    126    993    3            �           2617    16542    |>>    OPERATOR     �   CREATE OPERATOR |>> (
    PROCEDURE = st_geometry_above,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = <<|,
    RESTRICT = positionsel,
    JOIN = positionjoinsel
);
 /   DROP OPERATOR public.|>> (geometry, geometry);
       public       postgres    false    993    3    134    993            �           2617    16548    ~    OPERATOR     �   CREATE OPERATOR ~ (
    PROCEDURE = st_geometry_contain,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = @,
    RESTRICT = contsel,
    JOIN = contjoinsel
);
 -   DROP OPERATOR public.~ (geometry, geometry);
       public       postgres    false    993    138    3    993            �           2617    16547    ~=    OPERATOR     �   CREATE OPERATOR ~= (
    PROCEDURE = st_geometry_same,
    LEFTARG = geometry,
    RIGHTARG = geometry,
    COMMUTATOR = ~=,
    RESTRICT = eqsel,
    JOIN = eqjoinsel
);
 .   DROP OPERATOR public.~= (geometry, geometry);
       public       postgres    false    993    144    3    993            [           2616    16503    btree_geometry_ops    OPERATOR CLASS     F  CREATE OPERATOR CLASS btree_geometry_ops
    DEFAULT FOR TYPE geometry USING btree AS
    OPERATOR 1 <(geometry,geometry) ,
    OPERATOR 2 <=(geometry,geometry) ,
    OPERATOR 3 =(geometry,geometry) ,
    OPERATOR 4 >=(geometry,geometry) ,
    OPERATOR 5 >(geometry,geometry) ,
    FUNCTION 1 geometry_cmp(geometry,geometry);
 ;   DROP OPERATOR CLASS public.btree_geometry_ops USING btree;
       public       postgres    false    993    3    1991            \           2616    16558    gist_geometry_ops    OPERATOR CLASS     �  CREATE OPERATOR CLASS gist_geometry_ops
    DEFAULT FOR TYPE geometry USING gist AS
    STORAGE box2d ,
    OPERATOR 1 <<(geometry,geometry) ,
    OPERATOR 2 &<(geometry,geometry) ,
    OPERATOR 3 &&(geometry,geometry) ,
    OPERATOR 4 &>(geometry,geometry) ,
    OPERATOR 5 >>(geometry,geometry) ,
    OPERATOR 6 ~=(geometry,geometry) ,
    OPERATOR 7 ~(geometry,geometry) ,
    OPERATOR 8 @(geometry,geometry) ,
    OPERATOR 9 &<|(geometry,geometry) ,
    OPERATOR 10 <<|(geometry,geometry) ,
    OPERATOR 11 |>>(geometry,geometry) ,
    OPERATOR 12 |&>(geometry,geometry) ,
    FUNCTION 1 lwgeom_gist_consistent(internal,geometry,integer) ,
    FUNCTION 2 lwgeom_gist_union(bytea,internal) ,
    FUNCTION 3 lwgeom_gist_compress(internal) ,
    FUNCTION 4 lwgeom_gist_decompress(internal) ,
    FUNCTION 5 lwgeom_gist_penalty(internal,internal,internal) ,
    FUNCTION 6 lwgeom_gist_picksplit(internal,internal) ,
    FUNCTION 7 lwgeom_gist_same(box2d,box2d,internal);
 9   DROP OPERATOR CLASS public.gist_geometry_ops USING gist;
       public       postgres    false    1005    3    1992    993            �	           2605    16834 #   CAST (public.box2d AS public.box3d)    CAST     d   CREATE CAST (public.box2d AS public.box3d) WITH FUNCTION public.st_box3d(public.box2d) AS IMPLICIT;
 *   DROP CAST (public.box2d AS public.box3d);
    
   pg_catalog            false    364    996    1005    364            �	           2605    16835 &   CAST (public.box2d AS public.geometry)    CAST     j   CREATE CAST (public.box2d AS public.geometry) WITH FUNCTION public.st_geometry(public.box2d) AS IMPLICIT;
 -   DROP CAST (public.box2d AS public.geometry);
    
   pg_catalog            false    371    371    1005    993            �	           2605    16836    CAST (public.box3d AS box)    CAST     Y   CREATE CAST (public.box3d AS box) WITH FUNCTION public.st_box(public.box3d) AS IMPLICIT;
 !   DROP CAST (public.box3d AS box);
    
   pg_catalog            false    366    996    366            �	           2605    16833 #   CAST (public.box3d AS public.box2d)    CAST     d   CREATE CAST (public.box3d AS public.box2d) WITH FUNCTION public.st_box2d(public.box3d) AS IMPLICIT;
 *   DROP CAST (public.box3d AS public.box2d);
    
   pg_catalog            false    362    362    996    1005            �	           2605    16837 &   CAST (public.box3d AS public.geometry)    CAST     j   CREATE CAST (public.box3d AS public.geometry) WITH FUNCTION public.st_geometry(public.box3d) AS IMPLICIT;
 -   DROP CAST (public.box3d AS public.geometry);
    
   pg_catalog            false    373    993    373    996            �	           2605    16844 *   CAST (public.box3d_extent AS public.box2d)    CAST     r   CREATE CAST (public.box3d_extent AS public.box2d) WITH FUNCTION public.st_box2d(public.box3d_extent) AS IMPLICIT;
 1   DROP CAST (public.box3d_extent AS public.box2d);
    
   pg_catalog            false    65    1005    999    65            �	           2605    16843 *   CAST (public.box3d_extent AS public.box3d)    CAST     y   CREATE CAST (public.box3d_extent AS public.box3d) WITH FUNCTION public.st_box3d_extent(public.box3d_extent) AS IMPLICIT;
 1   DROP CAST (public.box3d_extent AS public.box3d);
    
   pg_catalog            false    64    999    996    64            �	           2605    16845 -   CAST (public.box3d_extent AS public.geometry)    CAST     x   CREATE CAST (public.box3d_extent AS public.geometry) WITH FUNCTION public.st_geometry(public.box3d_extent) AS IMPLICIT;
 4   DROP CAST (public.box3d_extent AS public.geometry);
    
   pg_catalog            false    66    999    993    66            6	           2605    16841    CAST (bytea AS public.geometry)    CAST     \   CREATE CAST (bytea AS public.geometry) WITH FUNCTION public.st_geometry(bytea) AS IMPLICIT;
 &   DROP CAST (bytea AS public.geometry);
    
   pg_catalog            false    379    993    379             
           2605    16840 %   CAST (public.chip AS public.geometry)    CAST     h   CREATE CAST (public.chip AS public.geometry) WITH FUNCTION public.st_geometry(public.chip) AS IMPLICIT;
 ,   DROP CAST (public.chip AS public.geometry);
    
   pg_catalog            false    377    1002    993    377            �	           2605    16832    CAST (public.geometry AS box)    CAST     _   CREATE CAST (public.geometry AS box) WITH FUNCTION public.st_box(public.geometry) AS IMPLICIT;
 $   DROP CAST (public.geometry AS box);
    
   pg_catalog            false    360    993    360            �	           2605    16830 &   CAST (public.geometry AS public.box2d)    CAST     j   CREATE CAST (public.geometry AS public.box2d) WITH FUNCTION public.st_box2d(public.geometry) AS IMPLICIT;
 -   DROP CAST (public.geometry AS public.box2d);
    
   pg_catalog            false    356    993    1005    356            �	           2605    16831 &   CAST (public.geometry AS public.box3d)    CAST     j   CREATE CAST (public.geometry AS public.box3d) WITH FUNCTION public.st_box3d(public.geometry) AS IMPLICIT;
 -   DROP CAST (public.geometry AS public.box3d);
    
   pg_catalog            false    358    996    993    358            �	           2605    16842    CAST (public.geometry AS bytea)    CAST     c   CREATE CAST (public.geometry AS bytea) WITH FUNCTION public.st_bytea(public.geometry) AS IMPLICIT;
 &   DROP CAST (public.geometry AS bytea);
    
   pg_catalog            false    381    993    381            �	           2605    16839    CAST (public.geometry AS text)    CAST     a   CREATE CAST (public.geometry AS text) WITH FUNCTION public.st_text(public.geometry) AS IMPLICIT;
 %   DROP CAST (public.geometry AS text);
    
   pg_catalog            false    368    993    368            x	           2605    16838    CAST (text AS public.geometry)    CAST     Z   CREATE CAST (text AS public.geometry) WITH FUNCTION public.st_geometry(text) AS IMPLICIT;
 %   DROP CAST (text AS public.geometry);
    
   pg_catalog            false    375    993    375            �           1259    21665    cities    TABLE     �  CREATE TABLE cities (
    id integer NOT NULL,
    country_id integer NOT NULL,
    province_id integer,
    name character varying(255) NOT NULL,
    gid integer,
    zip integer,
    geom geometry,
    CONSTRAINT enforce_dims_geom CHECK ((st_ndims(geom) = 2)),
    CONSTRAINT enforce_geotype_geom CHECK (((geometrytype(geom) = 'POINT'::text) OR (geom IS NULL))),
    CONSTRAINT enforce_srid_geom CHECK ((st_srid(geom) = 4326))
);
    DROP TABLE public.cities;
       public         postgres    false    2562    2563    2564    993    3            �           1259    21663    cities_id_seq    SEQUENCE     o   CREATE SEQUENCE cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public       postgres    false    3    2263            '
           0    0    cities_id_seq    SEQUENCE OWNED BY     1   ALTER SEQUENCE cities_id_seq OWNED BY cities.id;
            public       postgres    false    2262            (
           0    0    cities_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('cities_id_seq', 1, false);
            public       postgres    false    2262            �           1259    21688 	   countries    TABLE     �   CREATE TABLE countries (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    abbr character varying(2) NOT NULL
);
    DROP TABLE public.countries;
       public         postgres    false    3            �           1259    21686    countries_id_seq    SEQUENCE     r   CREATE SEQUENCE countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public       postgres    false    2267    3            )
           0    0    countries_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE countries_id_seq OWNED BY countries.id;
            public       postgres    false    2266            *
           0    0    countries_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('countries_id_seq', 1, false);
            public       postgres    false    2266            �           1259    16762    geometry_columns    TABLE     ^  CREATE TABLE geometry_columns (
    f_table_catalog character varying(256) NOT NULL,
    f_table_schema character varying(256) NOT NULL,
    f_table_name character varying(256) NOT NULL,
    f_geometry_column character varying(256) NOT NULL,
    coord_dimension integer NOT NULL,
    srid integer NOT NULL,
    type character varying(30) NOT NULL
);
 $   DROP TABLE public.geometry_columns;
       public         postgres    true    3            +
           0    0    geometry_columns    ACL     �   REVOKE ALL ON TABLE geometry_columns FROM PUBLIC;
REVOKE ALL ON TABLE geometry_columns FROM postgres;
GRANT ALL ON TABLE geometry_columns TO postgres;
GRANT ALL ON TABLE geometry_columns TO PUBLIC;
            public       postgres    false    2260            �           1259    21680 	   provinces    TABLE     �   CREATE TABLE provinces (
    id integer NOT NULL,
    country_id integer NOT NULL,
    name character varying(255) NOT NULL,
    abbr character varying(2) NOT NULL,
    gid integer
);
    DROP TABLE public.provinces;
       public         postgres    false    3            �           1259    21678    provinces_id_seq    SEQUENCE     r   CREATE SEQUENCE provinces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
 '   DROP SEQUENCE public.provinces_id_seq;
       public       postgres    false    2265    3            ,
           0    0    provinces_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE provinces_id_seq OWNED BY provinces.id;
            public       postgres    false    2264            -
           0    0    provinces_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('provinces_id_seq', 1, false);
            public       postgres    false    2264            �           1259    21565    schema_migrations    TABLE     P   CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         postgres    false    3            �           1259    16754    spatial_ref_sys    TABLE     �   CREATE TABLE spatial_ref_sys (
    srid integer NOT NULL,
    auth_name character varying(256),
    auth_srid integer,
    srtext character varying(2048),
    proj4text character varying(2048)
);
 #   DROP TABLE public.spatial_ref_sys;
       public         postgres    false    3            .
           0    0    spatial_ref_sys    ACL     �   REVOKE ALL ON TABLE spatial_ref_sys FROM PUBLIC;
REVOKE ALL ON TABLE spatial_ref_sys FROM postgres;
GRANT ALL ON TABLE spatial_ref_sys TO postgres;
GRANT ALL ON TABLE spatial_ref_sys TO PUBLIC;
            public       postgres    false    2259            
           2604    21668    id    DEFAULT     S   ALTER TABLE cities ALTER COLUMN id SET DEFAULT nextval('cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    2262    2263    2263            
           2604    21691    id    DEFAULT     Y   ALTER TABLE countries ALTER COLUMN id SET DEFAULT nextval('countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    2266    2267    2267            
           2604    21683    id    DEFAULT     Y   ALTER TABLE provinces ALTER COLUMN id SET DEFAULT nextval('provinces_id_seq'::regclass);
 ;   ALTER TABLE public.provinces ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    2264    2265    2265            
          0    21665    cities 
   TABLE DATA               L   COPY cities (id, country_id, province_id, name, gid, zip, geom) FROM stdin;
    public       postgres    false    2263   {      !
          0    21688 	   countries 
   TABLE DATA               ,   COPY countries (id, name, abbr) FROM stdin;
    public       postgres    false    2267   �      
          0    16762    geometry_columns 
   TABLE DATA               �   COPY geometry_columns (f_table_catalog, f_table_schema, f_table_name, f_geometry_column, coord_dimension, srid, type) FROM stdin;
    public       postgres    false    2260   �       
          0    21680 	   provinces 
   TABLE DATA               =   COPY provinces (id, country_id, name, abbr, gid) FROM stdin;
    public       postgres    false    2265   �      
          0    21565    schema_migrations 
   TABLE DATA               -   COPY schema_migrations (version) FROM stdin;
    public       postgres    false    2261         
          0    16754    spatial_ref_sys 
   TABLE DATA               Q   COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public       postgres    false    2259   <      
           2606    21670    cities_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public         postgres    false    2263    2263            
           2606    21693    countries_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         postgres    false    2267    2267            

           2606    16769    geometry_columns_pk 
   CONSTRAINT     �   ALTER TABLE ONLY geometry_columns
    ADD CONSTRAINT geometry_columns_pk PRIMARY KEY (f_table_catalog, f_table_schema, f_table_name, f_geometry_column);
 N   ALTER TABLE ONLY public.geometry_columns DROP CONSTRAINT geometry_columns_pk;
       public         postgres    false    2260    2260    2260    2260    2260            
           2606    21685    provinces_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.provinces DROP CONSTRAINT provinces_pkey;
       public         postgres    false    2265    2265            
           2606    16761    spatial_ref_sys_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY spatial_ref_sys
    ADD CONSTRAINT spatial_ref_sys_pkey PRIMARY KEY (srid);
 N   ALTER TABLE ONLY public.spatial_ref_sys DROP CONSTRAINT spatial_ref_sys_pkey;
       public         postgres    false    2259    2259            
           1259    21697    index_cities_on_country_id    INDEX     L   CREATE INDEX index_cities_on_country_id ON cities USING btree (country_id);
 .   DROP INDEX public.index_cities_on_country_id;
       public         postgres    false    2263            
           1259    21699    index_cities_on_geom    INDEX     ?   CREATE INDEX index_cities_on_geom ON cities USING gist (geom);
 (   DROP INDEX public.index_cities_on_geom;
       public         postgres    false    1884    2263            
           1259    21695    index_cities_on_gid    INDEX     >   CREATE INDEX index_cities_on_gid ON cities USING btree (gid);
 '   DROP INDEX public.index_cities_on_gid;
       public         postgres    false    2263            
           1259    21694    index_cities_on_name    INDEX     @   CREATE INDEX index_cities_on_name ON cities USING btree (name);
 (   DROP INDEX public.index_cities_on_name;
       public         postgres    false    2263            
           1259    21698    index_cities_on_province_id    INDEX     N   CREATE INDEX index_cities_on_province_id ON cities USING btree (province_id);
 /   DROP INDEX public.index_cities_on_province_id;
       public         postgres    false    2263            
           1259    21696    index_cities_on_zip    INDEX     >   CREATE INDEX index_cities_on_zip ON cities USING btree (zip);
 '   DROP INDEX public.index_cities_on_zip;
       public         postgres    false    2263            
           1259    21701    index_provinces_on_abbr    INDEX     F   CREATE INDEX index_provinces_on_abbr ON provinces USING btree (abbr);
 +   DROP INDEX public.index_provinces_on_abbr;
       public         postgres    false    2265            
           1259    21703    index_provinces_on_country_id    INDEX     R   CREATE INDEX index_provinces_on_country_id ON provinces USING btree (country_id);
 1   DROP INDEX public.index_provinces_on_country_id;
       public         postgres    false    2265            
           1259    21702    index_provinces_on_gid    INDEX     D   CREATE INDEX index_provinces_on_gid ON provinces USING btree (gid);
 *   DROP INDEX public.index_provinces_on_gid;
       public         postgres    false    2265            
           1259    21700    index_provinces_on_name    INDEX     F   CREATE INDEX index_provinces_on_name ON provinces USING btree (name);
 +   DROP INDEX public.index_provinces_on_name;
       public         postgres    false    2265            
           1259    21568    unique_schema_migrations    INDEX     Y   CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);
 ,   DROP INDEX public.unique_schema_migrations;
       public         postgres    false    2261            
      x������ � �      !
      x������ � �      
   .   x��,(M��L�L�,�L-�LO���4�4162��������� �
       
      x������ � �      
      x�3204006�405455����� (#x      
      x��[w�8�6|=߯Ъ�I���g�.;夒8i�]�]�fq1c�,�nJJ&��?��p�x�%�H�݇H %{o ��Gā��W'g��ԫ�W�N&����S B�����������:��x����]T^�||���Û����e�X$���0��1$X C!俐�����|���������?�`a����_~��l���A�� ���1$@d� ��q4N��8��[� ��W~�x���|�<I�_ӫ��a��\�@����7����4����;�0L� !0�}z T�ݾ�H)��׏�y��O�l~=������~�ӧ�V?.�����qң�Y4M>/F���y'_�yw��)e�u�q��⛺b�vv1����l�~N�i�=h(9�Hj�F��iK�hA#���bM�]bMCl�P4�P�А���H� � �,�C�}8���@X�aq#a%xhdڙ�Cm�wnv�7���o���it�d��x�Ƴ�"�����*�&�����/< >o�Q�_��"�z�&���7�����Q9p����<=U%:�iM?��v[�Z����y�u>���a�)^$���>���7��8ͿI��p$�4�_d�T��<[F����x��Q6��G"�������ƒ�� 	Z�A,(��| �$�Օ'�.�a�Vv� 5�\XqJ�Ŏ�X6R�m���B�a ��fPmhu�k�d�p��'���� c&���8��z2N��y<����\�<��&�7Iއq��������Ÿ������s�Ρ�!y;�L���d���U�!��@�z:��C�+O͎f%���!�d'n�hW�譮�+\`X@I���ș���|��-���z�$�@*��/��Ew��y|�~J��U}��[��~q����*�qp*yb :�i#���C�����$����1�d緉܌�ϡ�C��P={�o-(P@1�R���
 )��J�PQ��X#o��aM�ʝ�ziɵ�(q�k\s���5J�5J;�Fiŵ����`�
��a�����}�o\IW���nlvBsD�Α�rv�ԺĚ��;y��d&�J�,55Lc@��RŨg�hd��[p��K̙�z�qH
���U�A�f�|�Cy8z�2�g��o`(����~�d'
À�
�R$D�a���pI�+O���!�Y�s�B�O�y�8z'��9; ��'{�M}�_b�5�B�+
i=��f���ԙ-��M�R�l�J�0@O�Cˋ��y%?كW��� &�x�h� >X.@��i<t9�m���¡�q~�@��O�����:�P2VϝF���:�f��5$�j9Q���L�,@O��C�����8��H}���/mo�D�C/�h� >X3@�5�v��T`��p��-����՗$O�Ҭ��F��?V��]2�E������������3���Kd�\���撼�\m�� ,!��RMO{	0@ �pC�Ԇ���I\�F���t�*����JYd��[�_��*x@�`k���`'�v��K�XN&.5�=�C��-���퐵�TىC�up��p8��ᕷ���6E�(%�
������D�kgz��OD��Lz�s��1>`햸��oq j8{�����.ɗ���ɪ��r�7ج��]�J���l����rɅ�j�42�=���4�'���g�������q�&�1���a�����zc$�!'�� ��Ȱ'F~3_&�|MK�h��k�����q�J����ŕ���O� � �a3@N�K�	5<����������ċZ#����t;���@�T������"����&	�w8��#��zQ���5&%m�B#� ��-��j�.;4��=���o�F�?���8�'~�]�R�h�_��ᶸ|�z��v6�pA�z�=]�g�b�.��X�W��ԧ�`o�J�<�����V胣6:Z�ĪӖp�B�$�0׈5ڃ=��d���N�v��Cʇװ+Yߺv���Hy�XæԈ�X6b�rj��MX 0�THT�F#9�����?�WI���D�g�c�S��$W��ܰ�yK�ˇht�i͔��r��:Aء��N�#��:*�x�
Z~W�%��~��F8�|�s��1�.�5�C=��٫�#��`�x�>�h0j�߶�q�1�|���ר�De&������/�'~ymM{ZxO:�߈����1�����@dn�F���.KIF�wb����%�a	�ÒF�$��'��}���P" ����4�C�H>���}��Ƙ�<��S"y��ßP#�C>�>��Գ��#�����!��W˛x�^����;%��=Z�n��Ո|l�a-%+�  
�-^�Bq���PS*�_����=����Pg��觠Pp�}[VW@�f[o�C��>䃫5���l%�l`�R�im_�<�NF�I��py�l�Er�$$ہ1�E�UY�����T��__�Ek�J=q�R�}P�p��s�
�<��p�2��4�SO[�T_>��]�}��[��v�� �cIĵ/"�%B��;q���}��ps
�=YZ��D�!��.�V�pO�OAFw���!�����EVo��z�A����{9II/��Z��=U���x���{@�^_(�C�Ҫ�a���}��p�������(Ǩ\c{����C�9kٙ��/�����Fm��X�-Qh���``�ƪ��%6����������5.�E�TՉi�H��J�7D�8�7F协\s� �[��>5'�wh��=>z1t�"툰t@R�j��������nt �9����D��g��_�#��$�&����H(D�H�H|PI���T�|i�I�|��SMD̎쪉�i�Z��SR%����e%>숤�4��^d�K�yZw$�?�^��o�Ŏ��Z�2�o�L��2�2� RE��gi���� i�2�r.�]:��1����~%��ѯ�b%�wQ���*TU�9w�E@��/�VC�B4�����	7Ҩ���V��|٭?0�f�3Q�e\sb��T���v�,�f��*��_w�a9�氜޺׆An���N�υ�;O׊�U���x��E�]H<������>վ�:|X��j>���ջ!�� "�AK��v�����}��\ҕr����f�Au���㑜z�٘ဉ1�*�u7>�q��r���6A�?P�ǀ���	3��p<�; ��jc������V��۷�hz���e�Xf�Y�O�y/��q��$h2���ݑ��=h	�ތ�:�X���"4�bz�,њ���Zx�=�n���%�n�&�����}������~��G8�[SN�ǘ�u��O�n-�כ5��&�2�jF{黷���xu)�{�7͏w��f�S�9����C�@ޙ�Q��L��X>/�����o�.-|�O���M����FV4��x�g<�(������A09�&o���T4��>-��K��-ӄt���Q�6
���:�X1��?��҈c�6zsy����va�������ܠ;��E�fR.�5��¼�̧*]V�F�*Ǣr�1Ku ��Am��N�:��VH�ϧ���~N�������Ӄ�>Df�����Q@Ga+
���R@M�W_U�<�Y,��{��  G�]�տ�������j���-g;N�e�pV���ɩ@ƾ�!���/�7��/�>��ژ�f���͊��0��^�_�4U�7�j�l����L��6*�Y�� ̊��,�ѻ�ka��Y���N���R��4<a=�q-1�u��h1���լ��j�	�DC;A4�!�Aϒ,������#�ĆvBlH#6d��U�/��Eze [9�c��Z� `���H) ��0��C�Xn�6l��� �8�w~|�ы���Dpc +FogA&~�������R��a`o��KV^ʛE'3���u�a>��%�����'j�D�s��ri�A��/�.�ʦd
pw5��Ԇ����DcL;��>du�ڬWU6�ѭ��<����8��N�(����rR�8`�|Z�ܹ��    9��s�p�~z.?4F�R>����W�H�,�i5�Ïj��!�db��D�D`%b������|���C�hI���t��R$l�3RKtFڈ�^�z+����c�Ѿ	� JkS&�$��������8�ʧxϳT�ʬ�b(*�P��,�,�과_����p���fG8�����2C�cn�"_&��n��V��4C6/�?���0nõΡZ�k��D>yDhL������1 AH��Dl���> dܿ!y�^�I����d��GJ��Y��	�������|M'�Ҙ+~���)��%[|��� A�:�X�t����������uz}_]����d�u�gU�/L�C&�̈́k���	p�J���'w<Ms��d"\�(>�0>D�����C��MY��Z���6C�[	m�NI���)cF�_���>��&v �
�>l$��h�6�!�X'�+��4���b�ށ�e9�c4Yӂ�%,fc q�p� �[RͶ�iAߚ�����=��r�V3�d:ϖ�$����l��%�0��M�I�L��������<8֛��yI{�ݍXo�,aV �j���3�y+�NF�����x��o���5�J=���<�S[1��z4*Gۣ}����n��r9_�;eb��{�~�fxLHG�%i�[t�.R.�d���xV{�������HH�!�65У�}�����Tn�'��Q{��P��g��tH�*uH��U�A��@}�y��q��\Vh�G�{��I鱳,�Ř�8X1�> <��j�5�_�]2����iY���J:��J���l]�> =�ZϮ�u�jdG��d��ͨ �1$���;���Q	=wy��H�vv�Ѡc{^.�5��L�x�i�~{X����B�����ޣ����ƌ�i��� ���[4nܮm�1vmFx�w����}翟��04�<�����$V�fc/�_��Ȇi�����ކi�a 50���*7ٔջ�|���	����i�����@��$O��1��؍OY_��k[A*�=@j���1�p~Q #��[73�+LJf ���������'���-���]i�6��d�,wYt�qT1��J�"��	|a�<���4NeV���������?���*N[�V�C{�);��i`�0��arv|a�[�W�jBk�w-���Z��t/����]�Y�S��5�eɾ�xu���ړ��c������y6�Y�Uf��4��x�.��]!"}�+Qq%:��~����0�)k.��K�ѕ�]yѥ.���-��.�-w&%1�jK	ƭ���i���`��z�*\�� ��|�W)�S_��E�a�$��(��_�0���QW���ʓ��G&�����0È���j���b����ˀi<�D=	o��[�t� �f��MG�7H��0�)VىW���`� ��Z�����n��ݧl�_�l c�2�Q9~X��@c�6>B"(�\�Ec�1��9�$è�> ��긛V�^Su���������b���*�JtSP�}y92��$u�Bр|�7#�-�3�Ȇ�M�(SJA�7)[]�Ȋ��WE((�$�wlI>��?*s{^.K4�xK��t-�8ܒ��͔CoU0��W.Y�:x�`�]a��'��rY��7��}<M�\Y��qeW�Q98�6�A�R�平駕ln����7*\͘��HT�Xՠ��[��XFR�$�{�aO�M�L�N,氈�Fa@Ǆ�@�n�CuA��?�1 i �9o��cE&-л���V�Q�/^���꼡?���<�3�N�����=o��{�B+�"�0�]�����-|P�E��o�U�����ǳO���f�jt��A��A[���6Z�F�>�Vq��`)�������]Ն`|�Y��"|P�E�n�M�s�5u�,d�]m8�˱f���JX�U>> +TT�����~_m�%�3u9�wa��g�<��|�הcQ96��(|����SB+��rO\)h���b5��ʢ}eKi��!#�ԦP�R�^iN��G!�ԵN�e��V�[qw�3g���� ��d��[��p�c����7�hvSl��s�#�;��̪��~;pu[�C8�h�s��j0*�)�Z,�<��D�CS�`)ڋZnRP�Da�O]�_�V�b��Z���E��)���z��(��I��̍)�;$‫��Pj��������a-��3?=�ˇ���k�.{�f���|j�$���`�\,��� C��gyk�N)��e؈�lJf�D����F�E�¦A�ʦQoD��� $��`ϓS�&�.m��-�i�q/�r�X�� ��m����uI�d6:�d�^ˡ(�ErH%w����V>D߃�h
�v��:˾�Y��!3̰�qB��V�|.H��63̶���j�[��:�&zWo��R��U>D_�MO��i`ջt��*aQ�ݪ	{���*����rV.R.�#���H��*�/Ʉ&���_)k���ϯ�r�a�j5M�B�Pu���� J�Ѽx��:L ���gĉ�@C,nЖnҖ6��PZ<�3�f�T�����AA/�e�%5&&�~�����@3�.| OM=hQ/�O��2�p���hT�`/��(�1�@~���/> #п
�]�h�zz�LWq���!]g ���7�=��x�Ӭf�.?4���G�G:Wѷ[<)�rp׼|(�Y~�&�\��0�̮W��r2u}��-����j��!jh0�E��n5-��1K�����|(�Kk64 �̮�e�(Ƕz��(�گ<������ ���>�j��^�
``���m�]�w�񍡽�փ��}�8S*wq����S����������w����h�f``�}�p'�5�����}6z3���W���&�}Y�C�i�$�Rml2j�EF�v.��-@@�;��FY4͗7�M���#^�8�l�j$ 8���Y�7�-lT���j���$���:��3ҕ��z�С�c��o�*����{ך۞�K~� �ȿLF��~�%K�/�h�Gk7 3�T>�C6텁�s���(�s�{���s9%F��c��l)%�JYˠ�ee��F���s ����6W�k'��Zp;
.d[Qp�c-x���U��6�U�HC�l�O7�Lm�!��U���2Z�tN@>@$Կb8D !`���gڢ�a�|@Fhd�42B�߬L�O�n`p�|�E���b�N# d�Y<������Ϭb=|�`)����A0&�y��9} �.m�6��2@�%�-���s��v=�Qsy��si0��:[}���h]��(��Ⱥ0ئ��I��3��S5*B�^�.�\�&7E��u��^E�B�.�p�{��}|D���w,�w�P��\Fh���§v/���:�S����>W�S����z�d�%��	��ܦ̥�FJ� �7�̸��̧*�!�FK����ոA��w[|V�6ə�j�$�!'�$��	�$�V&���eZ�����O���x��j��K��u�M��O^�����]"����5|@]�1Xn=wݜ�� p���5�u��5L��6�,G�fR{�=�T��t�uЭlRkD���%��S���-ZW�Q9X�����P�X�JE���j���>`<\��lN5�?%�7� 6��S*�	-�x�@���Pp#�k(�|[$ݯ�J�	�����%^��i�9����\o�ғ�YA׻��	B��Z"�F�� q��̙��3�Q�H���e��	bl�_bQ�� =��9��X��a|n�2�;?�'�G#Kl���$_�+��v9�Ud�a��l�~N�i�� ���3�mEƜ�qG���U�� �g�fQ".ĉ>ݘ��U��,�Éa��k�.��,:������a���3�)$�Y!	���V����N��	�ѐ[�W��$�gf{G��a��L�� @��;B��?����,Â��,И[��'ǧ�dn̳/颌".��    �H�M3\�K�`>~�$/�A.�X�&�H�hB�>�T�Cq�'1��]�Z��Uo�؏R6�1������y@X�Si�6'��]�ObCO?��]T�3�j0*����8w%��(�.�aTōi���h�4�.��6���#�s�P��Gk6�s��Ā�w�?3e��s65��,2��������;I���.����e6��oި����}S�Q1��Ci��Hv��$_'���y�/MBF1UcUp�r(C��u�� �H�8ͺ����@���>�Qr�lj$*G8ъ0Te�����#��]��\�k\G�E�[U"2�ȿ8|�,�cI��I�I�:S�tG���V:R�]^h�G�{uy1�b;j�2ɕ�Ijz3�`5�&�T�UL&���*3.��4���2�h�G�%��s�[e�8�� ����j�GC�����FY�a �n���C>}d���*_�ƀ�`��I~uS�m�=0`}�FFǸ�л|N䜶�$�#lM��F�Z�A�_��P�?��I��P��iGX%�%�f���I�=/��7R��~:�[4/�L}���+n��TcEj����x�4�+��rO���r� 5QA��Va��| m��T��sɯ1&��Se����q�f�	j,�ƆR?� ���J5J�J���,��ڭE��=�%����S��FԠ���S�Fa���"�Ǩ�B}@z��v���MQ~*��W:�]���y��V�j9��Z�ZR4�DN3�9/ڭU�f�b*�zZ7�:����!��l���!Ta(�1v�ǨF|Tؤ�K�ݦчE���G;��iy�ni�Q 3(�<�ɿ���5���Xc>���N�S��rX�����]��-R��[9 ��	�P��!�4c���~v����<���Ī��v�u|�6�ke�� �̏@���,�X�JfE�1B�
D��F�r>p���(�����S,\~ht�:;?��6��[�*T���a�dx72v��J�HwI�1�i��"UtyR�1 h����5ǝV��Qu*f(���Z�=��rM�Bfpa�BF���az�����5d�1���/�ԋ���$�Ty\׫YA�����R.Y��1� k�&m�_�=G�E52��'�����G�+G"�{��翽��J�
�6�ـ��/�lȚ��RV6B
��� ����nm5��A{�>е����f�Wvt.DE�AK��whi��W�da49��>�;��ۦ�pLX�{19���'	� mH����X3nۢ�H�[=��<�L�p�V%���(���} h���T���q`p�,��\�@d����s�e2��*q���&u�uҟ$0�R��ӥ�V<<	�c�/�1�a���<�B�P��#@��D<���f�\E }�S`D���]��2WCGn���,U����pe0 ��zt��u���?0ΓkDȭ:4���+KP~�̗�����H�=S}�a�q륣�f��� y�s��ѭׁ3#���q�LKl4`��;J�A��sߥ|?�����x磲�ĺ[���/qH|�}�i|�����-�Y�5�\����q0o�`u���Faܠ��'�F���T�x�Հwd���ٮV�o�]ݴ\zk��R{��ţ���W�V�����`����wH���q�[�����,�M��=4,��������`��S�!���D��8� (��E�_h�6��ڽ0��$��O���t�'6୼�QyᰙJ������T���.ߏI�؜�� ����O�n�����խ!�5����w�4�8{��*v�9
8��A����p�D���f_m�<�s���ya��Ir���pZ�tcT��j|ݾ��xA,���|���a�Ȱ�A�ͪ|�2/�2?YM�����#�E����������/�:9���=�!eW<p��B>��D&@���F���Q71��Z�FۿL�>ų8u��zt�n�f�*HMY,B;* 5�R>@ ��/�b9����(@p����x�W�:�Cm���fq .�}6�J�  Ds��j��~��L N�BxR|*��W��V���Ц쳂�Cf�LOO��!�%3�d6��2��f�˫wCj(��/S>D_� �PS� �K�L��x�Lxm�G�r�F[ ����@1�!gD�͐��QD�hCt3k����|�����ZV)`���2�U�A��HS� �˓���E�ՕJ>���r8�|�ی�jL�(Ě�N���y6s���cm�\��T����'U��GJ�;Gl����
�\qz��7z�ˑ�~�C���ʇ�3MA+�'˧�I|�E�d+>Z^��Qya�P}z�%ʇ���B�)j��ť%��evu{���E&=��C��I�)hP����
�X�=,ƕ��Q׎�T(��ݚ�Cn��0x�_��φ�ś�1� �@ � ��V��������4��?4=��a��%��*ރH{�4>�Е�cB�j&�]#
`�W8{c���R7 ��u�ߤ���$z3_,��j�p��=�I�L�B�I(Ƙ�@ 1&�
CfX�V��������`Ȏf����c�q�.5D�R�f׉��v�,�x�[�D�-�uӱ!�čG�G�cU�����0@����$���q�!�����w@�ne���J����#�������Z���^ǫ��4O���v1O����vG�Y��r1u{M]�U�<�UA�"$v0����!���8C�ȴG!��'�|�����]�h
=M��j6�(Ϛ�l�<(�V���/F�Ł�����h6A5,������n{�CƦʇ�Ͱt+6�J�UZ��l��@�΁�d�5˝X��GׄS��ROC�f" ���@i ]*��4��bBv�K��\hT�}�������.�X*u��v�ց�J ���u%,�A��C��+q�TC�vK\�RR��ˬ�Y�����}��f=\N���4�*��z�j�`�e�R�^�Y<�R��W�7��\�EL;���T��$o��*lV�*j�	5ss١�Hvp��7���m-Y}�`kr��PKŷzcHH�W�Z^����*��
+�)&����aM���6�uh7���v]S�u}<_�׫؍v��"]���V)��ʮ�$Ԕ4��iv�΋.�4������2HƔ�1A����mZ�ݮ�w[31�Hs�J̓y<-�#��`T1H����I5��	N[���<ؚ���y`���E������fƣr| NHҌQr�[�Q���?^ω���� �V��2�M�˅b�\�Q1��Co��ʇ��SML�󝊕�"f1zxb%ce�k��@ۣ-�����g�2�iF0���s������pǭ�r@�[�� ��3ȇ����#�#�Ao6�tY�5�6ʗ�`�ovI}�X�Ei-�Z&��A[B"�[7QAC�Aړ��3և�ō�A^�K�%:���:�Z!�L�*�V� 5�U<Ⱥ�,��az�a��(G}|�-�rfk�#$����.%5�� ^�/�U��SGjx�����0�@�v0�L�KB�Q���J�: �#�"���O�GM�E���Z�����04��%����"�,�Z���EY�������-�BuX��"&�ul�q���+��֣C�ϩ��%�a;���pj�#���Tu�,*�]`�CS<��@.��
Q@�%)כ:b���X"�@����

�X��B���kK0����ٻ���֊�(��l4��K�}S�E��V����"oP����ԇ�Z�P˦���И؊v�$�/�ur7:�Ut��%]�G��b�1t��c(p�ip��dr1�Tz5���x��ɽ$YM����R��͠u�]Lu����(��75R����	G}�j�-Q�j��&�.-5��&���x���ȩ[��nv�2t�zP�Ph�`UU$G�����y��]�e5�>�	p���uSs鯡+4��g�D-��3S�JFz�Q�j�`��u�=��¾`�n^.�5Ĵ�{�V�4�e���-�`Ʒ�T�S��C[�t
��"4p�drf��9Q�S�E���I�"]l��9H�    :��� t	����������8�請���,�Y�1ƒE��U�;=�,I�����)C��w��L�}�q��Sr���"�z(��2�+z�)�f|+)��[�`�/�Ju��b�.��\�Cm���b0*#�8�%�m���Af�b+����I4�#CQ]��>�*a'��Xk0�N�M�LG�0��ȡ�(��a&�>`C�U���ݚ�Kt�����#�m��qD�+�-��v�j[�C"ߜ�38:_ݮF��/��_�Gj<*Ǉ"#��f��MF��Aso�Q��o�o��OAn�"2�8پ���p5�rI�12�$���U�1��j0*[@��<e���.�ܡ�5tk&�_c?�썃�ѻ�s��7B�jl��H�� �M>���w���2ɭ$��[:5���`�|���3�%�F^Ȋ@��l�a�%��ˡ�:��� ��T�"�a<F!S�~U� I�B��8�Lԧ#�)� Ƚ�w���>���A|�e��n1�jp��*(E�c@;]�pu��5{j��^cE�,��y���Gh�^JB�Yv�&Qu� G*����AGQz��>��o�ߚi��ШY.�X�c>�j�%��{�g�!��MqWT�%�h}�s�����m���j9����ٴ5/�Kf"3���,�^�n�����v �XLl ����ϒlڤ�vc��"R)���|�;��_}�puzX���I�̀t�>@�u
k�����#�wtN����zWKT )��6�4����4���,Iq�{�|a+�8�W
A.�FJ�%��u�5|�V��%���,��h�@T6������F<@���p�P\Tx ,:u�у `��}��ŇM�e�������W��γ՝����h=8����G�;�V�A+&������X�\5��_�w&�I<K��<M����WG�����ՖQ�Ol�gi�9��<3�y1���d���wp9#��rL���IoU����j8*�O�y��Q��Kt�|�d�AI-�FQ8.��wđ@#��e?�r�U�a	`W�ۘ��"������E��M��r�p�24��p���2$}��۳r	�q!1����\�Zo3�{,�u�Ԧ���N|@�� ѫT�JjP�ku.*97�b(*�)�À�r�mD�w�B�`��Rg"���<4��R�]�!׏� /i��s͖O�e�F�� �wo'V�ʻx��l����(�pJ[;��\*�RX�iJ�b��݉�l��R[�t�QFY�v���Zi�����THj ��Y�,F�4�/�X�,/F���@��^H���j`I�&a�`��V���>�G�C\*�0���.]|R�����*Ƣrl��h�N�����T#Ej�⛷/O��S�M�;�jӾ�V�i�3I�[�V��S#mv3���S���N��O{�ʳ���Nd�US��HpePl��.���F�5�ri��!����}cy��祺��W�R�{��F�E�;= @d 2;���u�)۱dU����U��[�|;���
dp22혁v�}��qL����n��$�*���O�i0Ǭ�כxyߍ*�MMBuQ�uzo?�� 0Uj���Cf>�*Y�@ؚi�р��6��n�:0�� �I��(�L��D�Q(�j`�x��n"�o�.�4 e�N�\�OFN��I��]�vh�<�噡�=��иW*���Y4Y�OS����VY�tʖD�XfP��J�) �U`Y�D�� anG Uu^��i'����W��#�j���@C^f �����seg������|��y�:�P�/3��]\
�e�ζB�%�(���B�2W�$s�]H����M �p���@ �N������J��e� �"�z7蘣�f���d���O��YE���c�"�ܽ�
f�]F������u�ȴ����`��{���۫�l��US{�xT�Q�JyQ��r��������4������`���*O��ʣ�1�	�xT�\�����N�O�F��.�3[���
m����1C�W_�꾐k�#IH O�X-�wRs)��T�Z$���0�rz�T%�T���:d[U�[�B&���<�\RkL�-'���x�����t�l�2�T�,�*d��G,fA(�AAH�X~]��@b?^n(c�}��������2g���r�qϊ�V/˳��8;xIl��SB0&��� Zy�����r���+'6ѧ��mlS}=2���� I�NV�'7�������Qi��(]e��<�*Q�c�yt���f����5p�v��?w���;�利1�������]��rl��?K�:z�%����H�E�v�G���B�	� �(
���sF�,$X�ۜ���X�A�p|@������swY�0vHEE����dEE���Ð[�Ж�*4d�VU�,gIU%�P��:�	Чء֐��RX�2��$qc+G"~�2����dv	@��냩_�R��T�o@�zR->��,�r95��*�V$z��]�i+�m�WbϑmPCG�f����e�����<��}ݵ�tY�A�0 �<���%���x�J��n�r8J���!�B�B).�D]���U4�֭��퉹���Tl������bd�E}��R��ZѼ��q~��M�S=H�t|�`�-����U���o�e<��h6Y6��<��L%Y������z;X��;y]�&�rG�aA-�,���2\��p-�}@���ϧME�c�r|��)����c�ǳY2=:,��D9H��l���s��I"y{��=�n��> \����&�F����$��$�^%�dnc���֥�)�)|���wQܮ�B�Ta�'���ꪨHn�'Q1��C�k���R-&<PVlu,w0�L+vp�6O��<�*��W��8^,s�@Cgi�Q9<�f#��I^>D��F�FS�.ht��U`���h�*����4X�����0s��I��@�Q!�KCy���Bpq�}%�az.�����#�v|��>������Kx��np���X��1�:���"΢��4���ri���[4�W.��b�6����@��!��BXSoP�E6_�dyb:��Q5<�a�����!�6YH4�?��b5> =���C�%#�d4��������l5�<�>�&����䈒pt�����{"u��;�h�{"u�!��dv��j�5�ۢ)���4���ҧh\���`��!��S�����3t��4�2���[卸є�B�3�Sy ��l P�k�H�a}�Gߺ��s��5Z=ɮ����c�O��4y7��x�Pi�i<��G���$��~�<������G�1�Z&@��!:z}Z����2Fh�X^֯���Ni����f����CT�G-�t�`m��ƴ�R���e0z��3��c8YF�� y�G�cBB���c��z�з�R��\hh���j�0G��R��d����RNN�
�u'| ��w���y�����z��J�Ֆ���W-v�,�)y(�d�t���,z��ٞ��h�����OE��w����&[-LA���Ⱦ6���j����� t\˾�53�'�_*�YF���_a�#F�w��D�G�L�%��� ���~t���
ñ�[�x�ƣj��LP1�JD �0n�4���fb.4�V���,���g#j%OmA磊Ѡ"M�u�E>�kз�M��\vhT��&��I<��$�YK�^������5�1 `:�������vG�ʰ5/�V��M6���5ԨJ�`Te�>�c��ڵ	��/0��U��D�D&޳�d���)����.A���@�fZ��� ��?T7{�)#Ԗ��D�t34M��n�2�o!eG�:�B@.l-ŠKAc!ؤ ٠`9rP��$%�C\n�*Z�=<��Q��I}�r���9���`ZMlT,�H�o~]xb��Y^��Kܤ-؄Ǫpޑ:�۹�����l��\Vh(��zO���DMb|�U���JT^Dc�,��S̂x���,�O�4;�3�BhO��:���U�Fg�+Qy%*�t    ��̵֣�]A .�qk'�2BC\h �/��|���e�:˸\��$����¾X�n^.34ԅv��r���bEy��X�`�c���@�c�)u�1+4��}:�s	Z�P�k	��]^�|jB5?�W�h��f�bt�&_e��Vb�
p*�Qy=*��y�z ��!��)|���w��y�,��
�%˫8��.n]� Y'c@�wm�> V��u�5+��HVdyn��Vú-=�Ü���x����cQ_g�֤\�k���z�*��]�e%��UÑ���Q����@ � rQ�0��y�\�������&��lK|h{̋��)މ����o���`a�2 N��:�E��v&��iQc�(5�u�(�g���Xkck�.[4�E��KI��aP��`����S)�\�Ԣ���k��@�Yd��e�.��-���C�
��xO�k'��v��M�%�ư�J�]-�4qc�˱� ���O���1�B!a���fE}1k��\�kԊj=M������1����h}a��p���*�C;3| ��;��X��&��B#]d��ۢt�St�T����/%��=z"���S݉@H�dd5��_6z��ϩ���#5�\\]E��/��bC�T��"H��"*gKE��5��0���J�g�֋(`��L�GrKvi�a04A���BU�/Pi�]�������3sx�5.�����ݦR��e��G�'w�*��A���nC׻G���/�� �|ȋ��o)�r~Z�' @T��gk܋-�����8��?T�Z�� fq���&����*h|�~��#
�)�>���i|�#�������W��gb�3���'I0�O5��s�`�ǁ2S@U t(y�����7N���؀���&�Z�N��D5x�����\�fpY�\�5~�?^��?�`�E�J柒���(��q�o>*��26����k��@]����b�=}@wx��k ��;�ԊR�Ө�w�>:^�>�5| ��5^����W��*gN1��
�ELRG���eU��B*�<A��Q�(!�zG�C�t���ݚ��"���k��ܻ8;?����T[8�<[})��N�Y2��i	�-�g� ���-`р�X��K�F$�M�f5UC��#yDh 址
+A��Z��9= =�� �}�./4R$)�M�e�����1����k��"/�w�-�����-�6����H®��۶�^VR��Kd�(	�wC�z7t}���?/� �4�F�=/����@�Ϸ�@���P6��$]^N�`S�)ߝ��0�V��oMn�N�[��ʍ�"��j<K;�k� Jz{7�&��G#Ub���ٹ�u��F��D���������f۷�3#��Q���cI�5M���n�l�PB�R�<K��lEQ�t�g'��Z�M�wQ��J��j�4,%��r��`+?��U3�r�qW��4��_�L&ϏO9zq>��H�Z��b�t��W�߭�|�S��(��� QR�(�A�J����߲|65ʇ������n$N+�W��
���~��!<�+m���T�@j`��ˋ�e?<�3%���2������e�� i�{��k�HH|yz�(/��n5��1>��M}�|����{���Q���:�A,:b�<�}��t��2���ؐlx1�(С�l��&I,��k��U߅>@B�	�o.�Q��&��KR�62��.��N#���P�/���ϭj�/UMY��P/��x��EjpXO'w+ڗ?���H��Ӛ@k�R�~�����/%��BM^��̮�ebB$��7���{jB���`�<�֬_���A�Ch�W����x:wKPT.���i:���]����G/��f���{=¢���$vN����e�T9lP��z�AH�e?�$���sH�5�����m�X����/�Un��RT]9��a\f\�f�t�j�H�� �n�{�d����������]�,��<߂m�r�F4߬"�goF/~�x)���ҥ�nx���I"���{�]�9V�_<,��_�~$�NwĐ��g��.թ��ՙ<�{��}�����Evg7'P���R���#96�� 0���d��P�����o.��%/��5f��˟G/>J.,;�:J�2O���jV��4���ݙo�έ B�v^��W6g����������cܭ�I�UԺ�%S�a�\�Ӓ%��LPU
&��;���|E��Ď�ߞf��{5�{\sϪ�O%�j��B$�8Kj���;%���>T��Mlai���"�P���|���Z4U����fWa��y���1��������Ve%���+�D)��:4���9�������K��K�K�ʐloJ�H�Q�z �R�l���ݲ�O����_7���G���V��_�4����o�k����Cj&l;
�p�d�r�1�����f�4��ʷ����4�9-�+�tR��ٽ8)Zʴw��(;���_\">z1YfW�7���Z) �#�vh�;��U���p��u_,�!,q��D�E���a]�k|f�dW��ы��M2���b8*G�����?	Q� E���`�R{ݢn\<�KZ¬J�'R�o���Cx}a�]���ԓ}��5���;�eV%��3z���a1��r\5_������4��&e,�����섍B�Z�	4�d��R}U{�#P0V]��� ��A,i7C 4�hDdkҬ�
H���,�C�������U���G�\N�n��&�~S�[��SQK��VS���έ���Y>M�8����5��|�7�};v�eCr�V��V�m�k�(]��[��'ɵ��2y�����Qy��TJ�^�*eK���R�r�mm��A[]}�sz��j���r���Ow5��w�t$ٖ�[ͮV��y���U�ĥ�1
y@���"����+8�AT;yQ�f-&���:�!Ha� ��ϻ䀚�{~zV��N��l�ɶ���L
��5PǱK����B�T�F���'6Q�n�A��C��V��x��S���-��B�^-�0*_�Ğ,�՗���b�/X�bm��*<�	���#P�� ����D�d'l���	�.$'�Ky�`(�Z�v��J�:�ǚ�x����]��b���p�>��E�k�'\|��.^}���K�Pp~�JgE��F�o�2O���f���B|3���btVȝnAh�4�F�rtXu��DWQ~�����u_���>�����͇sU~2�/�$�"��'�U�������_]������o���z�9���:�R:we��Yt�H�J
�;W�,�>�W���|�	H�>�3� I�X����8T5w̳|yS�Rk�-B	���7��:�\������|��w)�j���l�$U_)�����۟�͟�G�O^.s���3�򼚧��Ow��-����ez�*�+��bo>`I}1��C�������p�^=�B�Пfw�<�*����z�&���jC~��R�1�dL:R����>բ�ϋ�ZЗE�� �HRÊAz� �b�@��i���;&���5���,�1(`�Rھ\<Ȃ�6"�_.ȿ�%I����rQဋ$�%$Q}�{����8����VO���)�cD�����4� s�ڡ������nj$�a��n�^7�e0z�.��m駙����b4*G��$�Q����,�/ˢV�|�H��U�hr�7�%�=��XD,�ʆE*�@�������e]���mQjX5L�欚_ӹ��'��?�y�n����<P��#�2а=R��Ԍ�vZ��"b�-��jXO\�'�����)d/N������j��d�>�3�'#hV�}��|]�DǊAW�\�vC7���T��vh�˄��t-ѶPP��
����Wϵ�^�Q���yjV�*=S+�B��!��YпOA�O'�boA�t��� �!��YпKA�����
�z��];��!��YпOA�O'�`oAǇt������gA�>�=��ý�Bе���Ξ��t>���}]=������ �t�,�ߧ��    �t����C�v��C�ų���N�N��ނN!�ڛhA��YҿKIO'�toI��t�lC�Ub���}��"��p }���c�3}���'TY�*����M��|oi+����|?����#�0��v��MG�|o+)�?����� 

�P�� �p�,�ߝ�s�d�ثf���k/(��nJ�V�ֳ��/��d�����/��
7ݠ�����,��K:~*I?l��j[���k?(��nJ�V�ֳ��/��$������/��
7������,��K��J��+��%]{B�'tSҷ��%�IGO%�MrhI׮P��
ݔ���gI�_��SI�a�VU]�}%]�Ba�+�F{9��O�;7u�&���ɥ��ɥ��P%p?���=X�:a���0}��O����P��`�K��3�;3� �g����=� ����`�����Yi�?��'���W9� ��*-�X�Qcf�&���]Ľ>�F���y#��EԘdٶ?��w!�O�?�˸�~�}��1��ȱx���S��x*9~�ђc�K��g5�Hj9���r�T&6�@��c��F���5f@9�r�}�1y*Kz��ϒc�K��W9^=�^�L.&�+A>O��^��BJ��h�L�$��&�y"	���a�t���V��I<�]�ɽ�$�E�Y~��*�&����N}v1�z����ƪ�$B�:�`a��r]�3[��z��T��L�����gx���4K����+8r���7�U����d���OB�m�{H?[�S��\(r�k� .�k��L�T Ka������ߔ�Gʡ]����%�݇�5.)[W^JO���j����F��
��GĻW���W�_v<��U	�9��E'3)��t$W�[����%}����|����1���A��!O��H�u���F$�!&�Vm��4&�LY���" I�"O!!�h�:9���-Z�u��I+}JϮR��<J�J?pÊ���U��W���*����eA�}� �xd�d�얃Q98H+�Z�I���	 ����£�㩎��������Y�Xl�s��N����`��n�dz���Q98����rn4`�C�=h�W=ĳćxool���F��k�-��{<�{����?@�{�m����N]�:�xG֟���v�2�����*�;���	���u<�R)�J�?�W����|u����#��V-��PT��ǋE�uq�Mu�rO
�\g[aE��-�, `|By?T}�$��zzU�ԃ��I<�{ȼ��˕��K'��]��֮e#��VI��Zd�aAho2&��x^�� m���B� Ⱦ {A���vKcj-�|�|J���&Kn���]fؼ�Z�̒�r=�Ơ��_(��3�A}��Z�$[-o�y*E[�m�$|D<l)P{)���Y
��(��E��ŬCٳ(�ED�-�g Qd=EQ�U1�E�,�QlË�"�)����E�(B�,�Q�VY&���(�$a�(�gQ���b����H���vt��3l������z�����!�ϰ�"��[�)���EP�(>Ö��(>.l!��(j������a�_D����{�����!�ϰ�"��[HOQ��b�-'��яJZ�Ƶ���mq{�,�l8��1$X �r2
�/䠖�,W#e8@�	�s�qH�i��r0vC��$�יdw�����Jƒ���JUn�,�_o}�	�s>���I��a�Q�9O����4�F�R��x~=K�n�A�!�vfؒ%Hho��"�}�[$[�8�S�S��Y=�����y��l��z�'ю&bM�bOS�;�<���f6JF��S� �-zM�Cf]�Q|�K���\�VG�\.MV��� C(�G� , �ЎL�Cyx؃�$T^o�!畈u/I"����_�a@���*�K��C5�h\��2Q��r�0�\�Z��E!Ƃʽ_��5��tEg=oѻX�W?mu�c<���ڦ�N.�^�{3�r�[�Y/�t����m��a�k�1��W�$|��t����T�[���ʳ�Ī"AB���.q���~E��f��I��|D��Z��@"�V<�w ��j�������f���MH�����~�T�y��	�8�!�ڙHA���g���Ɋ!н��0�!���H���}<����ы���}�(��ٺ�����#u1*_�r;Y�/E=�u8{ʮꡱ����"hʎeI�����6ϙ����2L���$���OI��N���,���(_�W�|�Q$�K��,>J�%�n���ď�M[L?�8 �:SϮ*����� �v�L�c=w�,���u���я��B�Dz CJ�r����tWJt�B�Qj���l��>����8���m�9B��ZF�`C���s+V�4�@���)8� (�������C�s�ƺz���
P³^D����-�hX�Kq�Bh,����߅�Tٰt�:���@����O�~�����9��L�Lo��K|k�޽AK�$R�Q1z@�\�Ls�x}�_T�^����R�� ^=у�"o��M=L�nܥ��( �@R��m��d5͢�2�O�|��r�̒Y$��x����"�>^�ru�$��0�79�v�-lv���'\{פZ�Y�X�"�^lj����|9:Mg�1���>���F�5�:�`��9?_�	0�!gr�+�iHET
1��
rE�F��C�,��e����b4K��ˡ<�(� �kW�+�$^,�yM��t��86  ���؎h(!���5Bk[H�.�3oA,K{U$ŖKck��B��L�&��.�U@��rDQ�@ "�.��Q��'�(\���$�ܦ~r��.'펦V�X�G���5���2u;�Ѩ���C$�a�ә���D��J���Z��w�L����ӷ�S+����m!-n6�Ru�`��A���!���N@к�Ç�)�mK��� 6�h�����v�R�&��Y�=����ʰ�S���{1�NV�	1{b߅�SaH�Y���}�X;^hb�,ľ�~�=��+�d_!��XۄX<��B��2��w�61�W�����6!��.�O��W��EvL{9n�b�,ŞKqk	�A��)�poh�}���J1|�bߥ�ɰ�W���v�I�h��g)�]����}�xop�}s�mI�ɻ���B�?U���-�`9�n9��3r����w9}��U�6#�!���ƶ�oFP��.��m(A�?�w*�6��`3�J��{A}��E�{C�CP��'��M���g�LU��8���I��l���~9�Q9>��Rj	�Gn�|$�䶽�y{��=��){ڿq���	�V�X۹�E��?�����>M���D�q6�ZEz�v-��%�c��\:d�Ue�p���=ԇ����[?{+���~��R+,�B{�U�5]f�����Ռ����{M=C9�Q9>�6}�T�������浯��y֚6�gY~ZY�O��i�0lIS�{�*�BU#�!��MǍ�����f�'�O�H�\ҐJ[�h26ԃEǊ�WT���e)��Buj�D(�8$yMkE9l*� ��P�C<~�D�Ěw��អy�����ߥg�`(&��Uo��S���A����y(�#-��JF*�~}h ���c�ʟW�׫#��V
��U�u��m����}����@�a���"�gs�z�\(������&Z����ﾾ�k�o�&�����ճq�s�$�C�LM�����{&��nKy8���80Ob��uR	4pz}��+�� EH���A���!<�r��/;����"I�pk�'7N�%w�|t~v.���u��b,:�v��,ɦ�R�����k���M\���=)��z�%���GuY�B��ґ�zY�o*�NYϲ����'�h,�w��=d]�^�q��lF�4���Y�Z,Fo��u�WɌ�����0U4Ʃƌ�����"���U���'&�"g�Z�t|�Pe|S�!��9���G�[w�V�=�C���&��    �ת�yQ9GUۖ��u�]��^�y|��u�o]b�u�@?�^X�@vh���oγT�'�j���:8�\�Z�ɡ�:��ոEN%�����j��	����!��{���
�r�@��A�R�����6yiXګ+�WWi��|U�q6�}UK�(d?*��.��yO�$	�W�7���bS�W+�T��� ���mj� �fp��Ga�x�J@Ѓ�z��e%��?��ۺ6:�Rn�6�@�jX�_,���e�Xī�2�fm����X�=l�9�J���u�@�U��t����B^�V#�=��xx�fy�UQqU��x7R8z�̖F��۴x�c��ɰE��>H4|\�F�kOxG���k����F�m\��k7��fm���ܭs\+�گ*X�T���{��F��Al��`��[�Xo�ߒ���;��[#��j��T���Z�V���=^ƹ��p)�����A�s1�CF�_'3��K��DǕ�m��)Z@�!=��V� �ݹ�<$A�.��Y[����j��&��o�p��>�Gj��ߚ��0nN��o`�7p����:�wV�^����b�U �����./j�.n1�Ӌ�s�'�$�|[,�b�v")��FָQ�3ԉ�p1���9301��v�.�>�B�GN��L\�l>���vH�
Ľl+JhC�6�P�Bz�o��V������*N?�IF�p��V�7Ce�`" ��x�`bv�l�`bАP���s������ qذ�W���f���\�7�[��U�y�ΘJB� `��x^�9����0C�!���(q�bI؀�<r�u���@]z^�9K��Ƅ��F�"�C.[�»,��n^���E��������qX�q�6@B�'ˣu�!�G9�J�Z?q��A��R~?;U'�Z!E�W�d>R#V>cu�IiL�F�'�,�O2/-��}���}��}���#��a��S7��lZ� @�Q�A��۵.*�>mx�	K��@�6	LK���nVR���s����!���-���Q�y�q&Y��ym}k�)#��׹��J�k��Cj�e�����js�fYmL�r�tE1��X݊��I�ʵ�V��z����k�u�'pN�߃CV�]O��3ޞ�YO�j=q��x�zz�M���YN"�$���{��6�+������^#��W��Ev�#��T�Ι�_\��H�(B�V�O�q�]�{��FpJ��H$��n<��{�.�ҩ�yx��f��NcT9�����ns*;��i�ӛ�}W�o����L�����yE),͕��L�)������]B��Df"� y���>����}rӹ�IJ=v%D&��SZ����ri��ަ�i��/�3���d����3ʉ�X ��k����\"c8�v����ns*3A؀�f3�1h���Ln:7ًu&/����������?���˧qDkt����.׉4���H�r��p�)%Ys��nb���r�G�ɽ˩����b�5ӗ��]r�Y��h��|
�o��L*gv4���(Z��}��mN�'�A������C���J$��+��3(1��FI?�R�6��Hc���d��Jk�����ь亥��^%�P�{wX:�ͩ���y�����j��t&V�$w�J��H&t��V%�P���J�ۜ�J�v �i+Ôs8#ь1��k1w>��2�(9���ɽͩ�9Ҙsx��i��ҹ8Ij�π�R>�84J��v���(�j�g��q�W���o������䜳pN�Y�Ǡ�����(ن�ݻ&:�ͩ�1�s�������Ǵ�pf���niA���̨�'tt��C��K3Uns*3Á6�~�����&/���X6�?T:Y��3N���c�3G�6�g �@���|��a}��'��8F9z�BRg2������g��=�z�S
�1а�C���>���K��yXJgϷ���f�JX=�_��d�w�£�ۜ�R�i������/	����~{�L:��J�d�w��y��TV�Lm�4�����<%+���x��-�!6����8���ݻV:�ͩ���i�����ۇ�O����3�b�&�&�R�6��a��i�2���T>��m�+�D����wˇd�����k-o�c`F�ޡ���\�޽��pt�SY
��1�����כ4򜋝��	Ie?�#��8I��ݗv���Dvbj`���{Xm~��G]���M�vg�*M<i��mm�N�*6N��z�.Y:�ͩ\��m������v�Rv�c��C�Z��<k״������6To�����YY����Jl`���?�=���Cg�!��ңb�i�����8�{�G�#�Φz ��Cp�����1q;���s9�)ϻ�Zm�[({��';
W<�Xc�T�I�?wū���)+po���P k��e����=�ab���R�2�+�=+���o7�"�ay�\�>�s|���E ���Ja���,~��?n߮���lOѕ����Y4V�:���\߽[�X��k������,��eݪ��u�o�E�<�Gz���T�PǊ�M����=���.�C`m\0���p�3b2���	e���7{.��7�W!� �Ԇl�[��>�����{y���LռbG�x������ᓽ_���� �y�ƛ����u��=�s����R�Ջ��[����ӟV���.�g�9��e�\�����������r���f�BW�/���NV���/�7��h{QV$��u�d��p���l8Z=���N(��w7��V�w��b�c��jG�?���h^I�ua�)ٹ��pż����K*��r{�Gg�®�ۻ�G)[�����}����k�k\�X���wK ������fe?�V�>rI�#�M��޼���q�\��}�ճ�O�4����a��i30�_CD�Y?_��F��!�6D˨Q\|����t��>`���i��"�kd�r����3w@�W�~]�`}�����DOg�Ԝ�ۄ'�\�M$��&d��0�M @s�o�lr�6��ل�d>�M�;s�o�lr�6Q�ل�d5�M Vs�o�lr�6Q�|6��ؤ���l���~��d���	��&b$���lX��~��d������&r$���lD��~��<��b}b���'f:� u��'.��u2ʥEL�:l�I`�z7�� �뼝���N�Xt�9������w� x.��y� �p��sE`�� � ��ۿ`����J��o_,���w����X��$��%53!���r��d	Y�Fl�,��"��zx�7�l(�y�;�@�W��a����wŞ"w�;������?���??�!�!��G1K��QL�f#"����Y��_���Ei�,p��l�4�G�aV��`Ei��)s��kWF��	bWF@hB����_�ٰ���.�ʰR����^=��O����yZ��پ=o��v�^����Vd����"f���5�V��X	T%^u��./�~/H�Q-��
�$�(	�P�_��ۭ�SA��
�{ K!�,šnq���^Z�K�=����7�e@i�e��n�����F-�;��~(�g��g��n��
������^<<m~_���hk{۹�9���fC�������2�Q�bm���H�ح~oЛ��;��fv�^�e�E;���ִ��$ȃ1����xlNHp�j��/�~�u�M��n����_n��y����f��;�{��p�z��e��8���d6A#0��"���޽Fv;��^�8�@�B�������wo����~s��aQ>�}�ëA��N=iczw�����(A��5�Ҵ�״����`��JC�B�� ����Z�1�X��2]a^'Db�ޅ���c�M����Ah��K\߮6�tXmw�-���՗ŋ�����L���w߹�~�f��7��ݛF����:s�&�ݻ)�0%����_�Ӳ��{p��F2c2-Dnr%������/��om�V#·�n�IΧ �y��683|'�1�c0f	q��~����s<}�������][�r�C~�S�43���pAsEv�!�je?�$�Ն`�㓐␤�aR    M���VkI�l��wvX�_^��g�&�7n��2.E���Z��g���{] bp��l]@�JmHtj�jw��]��2�@tCҁ�7I���������(�á����,�O���O+g´���������m?��_�w?ku��Q��{����-����o?==~�o�w��d���f�lA�v���X9s���k���Υ}�˻;z���6���A��\-���{z۹��4y;��s7������B�@�����߮��s]|2�][]q�V��>���/��8Ň��`ϸT=����\�6Z*��3��!o��[];-~�<�t��ݾ���؀VM~p�_�v_��}q?p;��ݖ̔�qE��<����\x��خhVP�7 �����t�q�{1p��f��|zxX��yz��t�!��0�g����7�(���f���������{�v�y���}�z���z�wMp;�J�%����~f�샰F�,�Ӣl��R�)��shRv����i+���������K����v�I�Qj�k*�M*��XmG��[� �e	�����է��O��Vj,?H�Y���\���ov_/��}��?´c<�t���U�~+�uÞ��gW�X�_�'Ϯhf{F3i��
k��!T��C�a�,��9̚���1dF:��/�Dl��	�D�v�ݗ�]��%�o��܉� �5�LEU%E}����(������喘�����W�w���MQ��~�����������Ż��r������ZM� k5Ōʈ(�PT�F�<��R���3B�]���LdEh�d\q����4��� �`Cɳ^kg2����
rT>ʐ�v�jv~�	<䩤//U�y2&�%�?���+wӰ�LÄn��	=�4,��~�ӏ��m���~�@z; 7�g��%�)���� q����ﱋ�\�J�6�C�4�3�n�`��]�q���dw�;+��h�<NNUt�-�OV��
,����ß�yyL���w�"g��йlwuE����`� �k�dwqC�U��I��!����[�e���7��I�C�/iww��}����:d�{��.n�C d+>�!��2�AH&�+�>�H�z���DB$�X�P�T�R���A�;��.n�A�l+1� ���c�U�Ό�.��lA��W\u�~)�]�W�\��}	�1W3� ��U���{��6��_\����G����@��=m֟W���7��f��ij+T$?�dE�TD A���w�h�,D���c���c��.$�Q�� e+5H�2���T޻n�Q�D�\aU��*��*��� ����sS9��'ңr�P�F����_U��V9�me�\'����9R��r�U9��\��\_�y��M�>7q��Z���x����X��;Y1 pVgŇ��CD]NX��{m������w��m�E�U
�j���e����7�o�(�S4ef�4Sc8)�rY<�+f���o�#�SD�z���6U=��=�b��V��쾶����s=v(/�ψ,bQ��zF�P=�c���s�l��c��l���%�l���>�7��Oh��y��ŵ���7]�M�9{F8)ꀺMC͓	v&0蓄ZMPWD� �f�<۫����h��d��G[F���2,�����^&�q�ۋ_���`��f���q3S�;�V������E��ܷp���%�E�E*�R1��r��Mpb��ꒅ�j��e�{K3��ݐ��KW�c[�Rڱ�4e�̧���U�u��������x��Ro溿�n�l�q�`�?/���+���r����xQ���ֽ���U������w�T<��}���N��(Ǜ�J�����(�r��Kw�nxK˾�bՊx��p-��a�͜�����t�D��W��<�ўy���i��0�v3eڭ��	z���1Xl�M\�~ڄ	l��T�6a �f�k?|�����鱘d%Jvn��d��5�%f��xfJK��I��}Xӓȯ����^���D���I��� �#f:c��Ri�r$t�؃"l"l{��i��������~vJn�b�5�~�f1��>l>|�����l�8����O����Wk=G-<114_1'n��
gN�I��V��2;i�佦�����\+��%������j���n���E����2�o�����#>�Ց��/]8/]�^�ؽt�y.��R�M�4��&_k� 8n�JV_�4w!�H���p�D�����>ݏ��y�7UNdȞ"0�z��݁VY�۽SW�|�
�	����?��{}t��{"�������G[�]����~��"�<95�1ls�Ȫ��L���hNLt��?�)�v	�$a����L�<XA��~�!��u��I��*�b�4��~y8��9as�m?���}��mu��h9A�^���C��6����M�+1��W����*_}x\޿[n��|^Z5߭�nH��&�4a���ڗ���}f�����g)����[���(̓�����A��=��Z�v��9��(*�ԬxW��t����w<s��*��͸3X��� SVm�j��ۏ,�� �>g��w�3�����
�v*3Mv-��~�тj������*d���U��ܓ��ֱ}$������AL%��Vv�S�n����x5)�O�N����� ,�=���]�M��[�4W�a�a�'G*b�m#9B�ؓ7�{
��J��X�����I�q�2�Z=w˘ d�=dc�D� c�+c26>2�IƱ�X˘"d���L�2��2&@oI�#c�d����#�'�Y�`e�UG�Ϫ�1@UB|d̓�#�1>���gi�z�2��t�9L�!c@��V��%c�d����$��*%Ïph���r$��V;d���z��ͫ�]A��.�w��[z�s�bJLJF-���_��ݞ��))�����������^|��m��:/��6EC����<���i���!�h"��#yֱ{�npu]���A��I9���?ZZ�)��1@5�pZ�ܯ�BA8i}�6���8=p���Wz[�~��ˢVu�p7�Na�2�c�a�J�< �#�(�p��/$�Ϯ8�x�mbh�f"k�6Wf��KQ��
w	߭�_Q���Z%�� ����{��_�O�Ѯ�e��׀v_�en�mebhofbko&&/�n�u`m���f����)K2�U����IeXX�Ȕ�)@bj�G͉�Td4M�х%�	��j�8��@dh���9l�4}V��+lN�Qk�(�kSZ˴>���_�\״���_�Xk{��M�7����bF�dLH��� kSh��U�����<�a�l�U����s߮�0&�gO+�n
�ᔵ����=�|@2C"0 � �[� �]Ny�~Y����R?���M����t?��]��M�b��:��a��֋x^,�n�����.���B��N��~$�u�t��5���m&c��k>�ݥ[���<��I5�$�]��_�h�����C:���<X��Ғ��-���,'�>���k���Y����Oe�9i2繘ӊJ�ۨ�
��y-Ux� szU�x��̜���C�y-屧�.p	�z�˒u�ƺ:�Gr`]���ZZMyL�W����V��mm����M
^T���'���I����N�^ҹy2�)u�)�Q_	p^�.�u��܄�F��5�H&<�"�ֺ��hH���k�?ـ����X�Y�����Շne�8Y4֠8/�{*�A�Ơ,Ӻ�m���j��F��#`5`j-��f4ò<Ȱ����>0l�8��6fBC�!#u��֛���QSrﹸ��]Vlv��T;g�7ݫR��-`$h�������g2`㷸�}g�yN2M�ΙJ:����_�˵Ea�(
�֡�ɷ���BpC֦:�Db[�x;6���g���ۧ���r�����}O�CŰz(|x�=
,��\\��K��eד�L�����{���۽�6�r"�B��Փ<V)�����o��e�Ų�*�s?���u������VG���Y�eҠ����aR����,�r{W�Dj����� _Bވ��F߮�_��U2��L��ӽ&�M��3��'�6}z�|�5<t��ӥ?�7T����,7k��    P^�O ���џ?�I����!y%b�P~������{+v'D5a,�O�٥v�e{lR�e{�87���98��N��(��K;�c�gd�:�N����z������j���Aۋ�d��Q��B޽yA��"�����]rgS�v�`A�� ����¼�VO��\�7�o���,F#�['�+|W_����P�W:�3�Tn�Vc7��!\��ᒃOҬ�2|���	�F�O��:x4
�h5J�~�F��݁��*��/�(�������i89�t�5��g���yb��Ƒs���1(��֠�ev&} c�����R��b}��N:�X)�%H��x�y���`�#v�I��t��������'��H�yD[�=�q ���ل�|�7�ҙ;�(.:�Tk�2WU5Du>`��&E���I�J�N@��Z��?������/�(7Lr�u���fa� _A��׳_9CR����JeyG>�W��D�vu��B3G���W�����q��^O흦wg�����o�*������4W�T����)}~vNl8��*�T����Ϗ~�7תk��@[�^�"էV62�<'�~��ɪ�v�(�����x���qg���۳�e���2P���tǗ#E%F0X(�����o�u�1�1�d-x=k�j��|���a���`�u{�<wN��4��uΜ��9��.����;4ڹi.[W�ADjȩ�h.m�e_��:������+$;D=�q����'�ʓ$����~����逇\F��� �g�a5];Bӻ1א�#�ye}�~y_��$v80��9�k���b��g��xW3����^����H�1��k�Q}P`��� �U���vݹp�w���ǅUB�Dԃ&`�t�F�&ِrc�O��[�L�y딵��E#���/��G��y�Ϋ޷��z|����1���F�Њ��V�����l����4#�������1�(9	r^P�����g��_D�٘c6̓�)QO���}x(����m�-��/ʧz-���K�C���՞]�e��O���V
���[��zc%�������j�1Q����I��1�ɻ
���������#��n�f�1�c�UD=��j}�X$��t.��0�o��kq���jU6/�2�X
ʜpSnR8�����,ge��+-`Z�Q��^}Y�Z���m*&;��e��y��D�В���.�NX-�5�&�}2ܣ�wT�,�Kߙ�H�+�����Tv9V�u���I���)�vw�:�"�J� m!�i�iur!��4`�5�mdW�'�2�A���K*7U�H��k6�k$�!d=Q������4�:�h߆���H��
7�4&�{�"C�\Tﱌ(l{$/D �%IH(�zBܑ�Z�a��	Fɮ�c�����tMs�o�E����eK�ڍ9�ć�9��m|I��z� ���b��=�kᚆO�dh�
�/�[j�#N� ��:���u}�>�R�/��qxd��rޕ'h9,��8;Ż8
�ai��ゝ��Cq�h9�N��)������vY�����vGv�G���Lv٧�L�#������16������<��txG��8��߾s
�*1�:tܾ�Y��3��N�!� �9���]~\?.St<R���j��GD�u.V�؛Y%y_����yw��>��� �?����RY	Y0y-ES����/���qq�}����K=T�X��D�z��Љ����|ď�֟ҩ�7�T�|����h���ygί��h��2��F�����z�0�t~z��$-d=h�Kn��p���fñ��8-����I��>�����G�,���x;B�C��?nV�שT8�9�z(���I'�tna���)T%��d��Pm[*MT�Y&�Y&u�T��VG��0�;��O����Kk�7�$7���J���	�������au� ����3*#BX_��&��Vy��\EH�"�o��z��_���`EFAq}$ξ5}譳<P��.��n���X��/u��~O�
W(�ݤܟ������۩l��OG������ǜ��G���s��Y�z�����F�]�d�U7���.e7��#�V�=�;z���Zy)U�K����������mڨ8�u���a�8��s��\��n���%��x6���[��ZA�O�*IA�J�sWGL�e�ܿI��޸0���1��K�9��E�i��E���1&�T=��I��i
�xW���|4�f��1ES'��HD:De�j��F3���dپ�8���:Y��zc��bY�J#ݹ�tLf�h�4���n��blrۀ.fan�b?���n��{�ɱ�2`�z ���_ˇ��;;�uD>��r���� �t��7�o.�h��8V��8H��	~���.��A�M�!����,׃�8�ܼ��Wz4#��Ȗ��l�҈����GÝ�;�_Qa$U�3=~,ΔTV‫���~b}pr�_!����_�S�ͩ�k��٩yF�����өE��� �%ۮ �,��-�{U�#�����n-��}gS7vL��0U������I�>3[�]GB4ښ��q�<�~z�~�G1uM���b��u�o���}�7_���>���	32+��T=<�5��LL��f�Vj�����b̒��j�]��&�A��&��[}B`��ڵ	sK���ϝ5�wt=��������'}���g��ۺ���8�|gޝ�m9�L����t�IM��_ق��Ӫ����pr��yu+�f�a�UoB�G�?[o��cbug^��m��~�dz.Gnw��Ɋ*�FC�|r�����F��z�	��B��@���z�g��l���`��Oe���7�:����[�:�m1`P�g������ᜪ}|�CH�seИ�!ڣ�ў�����$^�m}i?�� o��N���^v���i/}�a ������z7u��]�Ee�8yѐ��|�3m���=�?$���oG�汣y�7̠�Dէ�m��ߎ�-���r�4����/ˇ�a=�u�ɼ�`ް�O��g�4�h?�	z��O�Q<����+h��z��qaB�˅�ktk;��#���o�-�ĺ2�3Tm<��ݔ��v�j8���Q]
#]�r��v}�p���s3��(�� ���_�i
���A���Cr���/�v����#��5�t=T�1���͑�zhJK;�)�y��2��?ųp�הE(���_���HO�4)=/w�,��h�j��vt>�����>��G�j����81S�p���V��-����Z|��}�3*����j�Z��,?�}��j�Jǃ������,߯nެ6�����־!�<<�
'�+����y�b����;���A��I�5�~�ך��u�����yZ�=�Ǽ�����5e��:��B������+�K}��ו�R_��몉���,�M�#��{�ݙD9&���/��j��ٿ
�����P"o�7e c*���^\�|m�׃<����_�[}ެ�.W��6�7��2��@�1��R-�Ne��_W���޼X�/������}������7��w{W�37|��//�5�����f[�||[�FW]��]���䪪���:��=������#�8x��iܫ7��׿/�o�V����W�Ɯ�ǜIځ^�j�����A�<Q�Z�no�z�+w����3������p�n�w,n㺡�c�w�t.7��e����3�G͟w��g����%���������Y�"lF����_D<¶�I��'��l�w!1������ak��&i���U�Fi3�����W�$U�VbSH���I����uvT��M�dL=w~P�˘���-������8y�oV���7c�K-�Z>��T����jA�]%������d��k�q)�whZ�$�}~I�/"I����T��a�~z��+$�M��vZ}{����7Na�ϲ����Ã}�
=� 4Z~aj��T��Jw*e'R)���{o6�������ۖ'���ϥHGX:�G/��z��j�z�����UrAs�������T    �I�#iu���	D�n��"v�uw��߃�PFQ)x��EU�/��a�\���ݯȚ�w���&�%�
�V��i�{TM	��������)��tw��I�b���ȉ�Td��Vi��Lڌ�"˰�9��a;D���2��t��W�oܷ��Y�Un�X~��^|����������.-Uy�j���륭����soŰ�_���F�r���T�`��%�1�E#;0�J�|`	�,Gb���������C�� `9D�4O�^���sbK��i>\�
\�8�t��[!�n��z����Vm�nw����Y�~��}��6Z�}��J�<�9��"�D�Kw���U����N��m����oQ|P���R�Ì��9���r�����G�)��NR<��_���{g��|���v�ؿw������ƾ�K�̧3��dϙ�����@�ԫh"*�\Az�ش��<��q)���Ơ�:X��O��n)v�&)	�wߊ|�NU��⋠��6��+w�P�l�$���Yx�k��U��c�{2%����~�NU�N:6�ەJHҼ�T��$�ƩT��^�4G*���_��A�,)5V�v-�R*�*�!�
���ʤ�X��ħR*�*U"�
0������X�ڵc<�RV��T ��ו�iRj�J�]ٹ��ʑJ��T tT4(U$�ƪԮP�TJX�
�R��ђ��e}�~�C�?E-�.�q�5<��5 ���7ŗov_C����+"i&�yvE�̌�!�dJ�B�R)��2ʙ�[Z��/�ᴱ��$����ӹ�ҌJZ"M�~����O�Y3)��jN�#1�4�n�K �;�N�	���ʭ:ւ�ߗ?�/��d��G�X[�
ԑ���W��|��/�OW?l�ޯ6�至'��_��y�6u���⯶�2�D0��/"�F�0�!��c�;���Z����KdTk"���E�@�*f����5	sxA�}lH1k⊹�x�O� ��*f������	�ǵ�+f�����[/13��,*f����M0p!2\���\W�3 CF��Y%1�%���n�b��C��u�'f����Nb�J�$_j������GK@=��=26T�&�9.9��5�A�"�u�r6c��$��L�$����
�9B�XZI��<\
N� 1�*g����i�:����H�^�+g2���t29T�4�929�)E�Y���.���3�@6���#�s��m9#` ���m+�R�c�@4���/^-��.�9*5��m���(Pud��t � �Vǚ$ǥ�p���1��qú��бJ:�L�3Աr, �u�A:���?�cÒ���q8�F���:j�t� ��M�qd:��^�c����
�1 ?> �Y�<-�"2�`#��~��K=���}��IZ��&�pz��2�����������r/:)ϱ�C�>2��0��
)Ӵ�M���!e<�{���@|[)�E_tR�cՇ|t�e�=>���}�I9�V#��|Ǭz)��̈́�]�4Д�H5qi:�YSD��Ҿ#jMǨ���D3��Ru*��L�:XՈ�?�eJ����O ����Kթ
0.U��2(�
P`I�Q2��Q(��fإ�T��y��Հ���3KU�Q(��f2إ�T��ë�E����Gt��@�P4C�U�����#P�	�������q��Q(��f^إ�T#���aC�
,9<Jر1*�Cь�T�J#Sup�R��X�h܆�l�BAQ4S�.U����TL�`P`y�Q���Q/( (�f�إ��F4.U�<�� ��#*�l1w�`c4@�7]d�.Ʀ�`��xQ`��qT���%�E��Y⋱�:02`�X�h�����Qa�ބ�%���ë1J,b<�`c0F	�Qz3F�cl���%��(q)#�2J��қ2�Dc�u0fd�(�G]�����8���<q��tM�A#G�F��K�.i�c�F	�Qz�F�Hcl�F����H��Qk�ެ�'����a#G�F��Xti#�6J��қ6�Dc�u0n��(�-_�c�F	�Qz�F�xcd�f���#x���2�����%�F��y⍱�:�7ro�h�xT�����
x��፩�t������B3�\v� 4*�XZ'AG&�`|�42U�!h �ʇ0���
z���
]�8r=hQ���B�<	:2As���Ջ|dAST>L1��gh��<q�� �D��n�yt\���E]���,h��ʇ"�c.b�=O�\q䖧
������etd���A�+�Ȃn�|�a:�%FA���Wa����( ��nOr�I�q)Qx��4�<���i�P{��t:Q���j|i�ȼP/Ԟ���	F����F�%�##C�P{"�t�V|����-�/I�j��ړ��at���j|9���P8Ԟ�0�+��g@�D���P;Ԟ��c�tx�-B��2đ�|�=�a:41BM� ut�&j �ړ �bt���!j|���QDԞ1���g��]z8���8���,q��4^P��4��pd�h�#_�����O�3pD��cwk�#��#���Z5����ny�nW��Z������<�ǲ��^o���/�����\n��zx\�}ZZMK�j������޾]���7�;q�̊�Y�m��vq1�����i0wA�`2X�H]�R������������]���%b�D|."?6!b,=�G�&��H�a-"����?֛O�{�>��X�~J�>]�w4E�K�Q?S_]-4��Ù'���Yx�R���Ȑ5/�1�AS��������W�V�V��JN�t祠���n�_+��f�������^�_�Q.��?֬_^��o~�����}��+��3��L��i���{w�/���rwYXm����BW��x\y���7*i�>PD#K�$韟�E���m�`�pW��^�H�l4%l�������u�P��f_�*P������7n�o�h6�#�D_�.��E�#���G�1�����oT5�F�U͓��V5	�5�B�Nѻt�ј@]����um�F��#h�k��c񷃮~c������~���w�ϛ�}ȫw_�.^��������氏����9�26G��O����݂��x�_eG���B���_�I��T��*��0٦�M���t��:�	� �6VOhaWn�����W��	�d�Z���ރ�@��Û:���O��_��}q��mJ"��"�{x�_���stOTq�s�?�)虆�Y&=Ǫ��Ok~@�Uј=~i�|�~=3�3ѳJz�T��~i���VEc����sq���A�<D�:�9V=��G�)��Q��#��Q��,B�l��c�spl�����1��N6Өg	z�zfy�s�z������*��/��ۯgzV!z&Iϱ�9�6�a����-�e�v]z֠g�g������rYx�ڪh�9�ݥgz6!zfIϱ�9<��*��/�zp���!z�Iϑ��ؗ�<8��Au�7��	BBY"��*:2"$�&��(��h`�$����Ut0$dHH�-P���2oJH��J�%�V��-}|T�2oNH��N�'�W����!@!��?uI!�&�H!	!�,��x^a�@������/�f�X!	a�<��h�̗#`!��>=*8���h!	��<��x�9|�S�ro^H��^�/�W����#�!��Đ{CĐ�C��a��F��	���/�f��!a�<1�h�ė#�!ŷ<=�
�f��!a�<1�x�9�R43<j�˽�!fH=��W�v�N��J��e�5��
;:R�K`!�����u�r�R>����bA��8ж_�@	�'%�R�$I9V)��"��.%�8Ƕ_ʀ�',�̓�����ϯ��*�[���',�������鏭�� �[� �'�R6y�r�R��EH];�c�$�z��B�,I9Z)���Z+�1�`���z"�B�2I9Z)��lZ+�1+`}�̀�1O�WH�$)G+��Ik%4f񫷔�1O�W�֙Ӥ�X��(}E�_&�qm���1�G    �D�"V�ȏ�K1̏�c�̏�	�E���C���� �1�GH�~�9���f|i ��1 ̟���_�j���1|Y �1�����_�j��1tI ��?����?B �W��%�5��1�d���� #V���K1�d��Є#V���� 1 ��� ��D#V�(��K )�r`�<����UsxI+B���?��y d�F��X G�@�a�X /Y������-�s�yy���ny�Z��z����t��R�^|_�x�z����V��_���V��oo�]>>}�ٽ���˟����^˄����P�R�7iA�E����ٛyy���Ϝ�4J]:���q:�3�?ɺԞg�TRKɇ�=�2�LE���wW�S}U�VX���q���������@9��A2�Y�uAƩl02�	 >r�k�䂘] �'���.�3�'Q%�μ��&&p M.=�_� ��`�̗��;P�I�K�B��3B�A�>�(x��?3x"���E�&&��U�=��fR�m�.\5�%�k	9�	 �r�k���v��}=�p]O���@�Ƚ�,r��s�(D vm��XQ�Ăx.�MF8k#�Lϻ��H�5E�&&0�gA����?x/������Լ��՛�����'��5ͤb6`:�T*fsN1��-<i��iUq�^��x!�h�^��x����ڿ�%�����c�@�횁Oc��_�� v�^���l�՞����JgT�� ��'��5��M@�,{���ڱAq�����Ȕs����>�_UԺ�Z�@ݮ�k��/��8Q����AGV�@gh�`�-F(�'������Y���g�Y��Og�O�����I�'��@�Bx-~MI�3���"0[��`��	i
陦�5�)"�A���;�����;	Q
���5e)�vA�h f����3�	&E���K<��myoU!PU]��Λ.p�b���7��N��%�̯��ED��n�8@]b+������t	���h�hڣ!�{4v�^ߣ)�8��ݔg�>��󻌒gW�fR>�ʋ��)��ڼ�cG��%���K�<B�؎�th���� մ����G�f���c�-O��>x�s��l��o�c��θ�T��"6����H����a�?.�3�c��>�lh;��a������e�H�8��0 ��1��%�}��	�E����Ox>CWG���χ6uc
���C��K�c�	{Z�8��+�쏴�t1��c�	{��8���؅ʇ�C��K�aA��'��0)�c(2�i��b�1��� O�ä ���P��>����
��P'\�+H���	����=��\a ���s	58����b�1��\a ���sH���	����3��� 1�\��V� &��/�s�ϱ@ܜr}�\��$O�K1�}/gp��۫>�E ������F���9�X�n�����StB�2�r,2�:���U��"@��	M+����a���(�^�	-,]f鄦���Xd�պ��t{�'��t=����c6�r]c����Z��L�	O�����a���L�^�	-P]�ꄧ���Xd���bu{�'�pu=�����c1�rK��U��"���`�NDZ�_�E�X�cẽ�Z�N�eZ�_�E��u4]��\�]���J������c������u��z8]Wi�~9�c������ut���J��,r���#�ׯNk��f8_W$��rL2�\�`��I'[�i"�-�w��ޭ>oV��Z��:�G� ���3�W,;�[ըe@�	�7j��$�3�akɠ1�Н�F9�6Mغ�D�杢��<�����\�Q��Lh��L̒�#P��v{p��F�v�iڮoTpK���<Ge��}�@�Q���n�v���9)8���ؠ[�"f��{��f���O�u-r����&č
&�ঝ�F�tN
�@�3�	9�*���SP��m▾�I�1(��+9��S5�mT0�n�̛��gh�k�s�V��
�����-�s��#P��p�rN��Q��TeԬഒ�W�s��EC���6*X��� ��6)8��P�*�Te�@���\K�ؤ�<�J���|mT�frm=\��#��MY�vN֔�Q�D<˵uYM"�A�3�M��9Y��& sd0�k냚D��gX�t����MEp��sm�J��c��G�vN�z�Q����`>��K4�8
ϰ�#�·���6�^����3�8�о�j�d�;E���tm�8��c�6�vN�`�Q� ��`P��13�8
ϱ�C����Q����`V���2�8�Ф�j�dM*E���um]'����;t���m$D�kzX�m�z���������oo^-���_-(�.u��.v��R���?�6��X�/�X��beZ[��f���D҂�.��E�#ի�j�<3�H�^I��_� �B,�����U�k�E�"~z�,$�M����~z�p�����]�G-pe2�+�t/M��w�v�V;'kG�(b��d8Wn�/�D��ghbe���6��W�ùrK�$�(D<��Es���
E\���-=:��#�,M7�xN�t�Q�@��p���E3�8�0��X����Q���i+[fW�w�X�۝	����û�)���������30f�ʘ;Ĭ��c3�F��#�;b��b�L[Ys��Ms�b�-���̙��e�-f`δ�9w���I͑���j&9B�X��rG·+��3�gڊ���L��c�sp������\�0��J<����2�.=Ӥ�X�,��Lz��>&]=So=��K�,�9V=ǄC����m�d���?�J���̓�#�3��z��zfXh��{�  k��]zIϱ�98[DB�Xx�K�p%z�Zi`��e�s�z��z�=c� ׮�����,H�U���$dX0xtR�&�� !�$��h��	�2,.$�p�d!p�$:���� A�A�ŃG�o>Ȁ�>H�U�2�RdX>(]>H�� >�B� M|0Z=�A�����N���|�d!|�&>���� E�A����ԛ2��,�����s0�>Ȱ|��'��9�A�i⃱�Y�A�������7��y��F��`>H|�c���	eԛr��<�����s0�>ȱ|P�|�z�A|���A��`�z?}�"� �������7��y��F��`>H|��ϓt� ��� �4��h��)��QO���|��!|�%>��M0d>��gM�|�y�A|���A��`�z��9��I�2o>ȁ�>��V��|�!� ��A��A��9�A�Y���9�2�X>xt20����(�����o�.�N�"�^|�n�y���{���R�����ߥx��zxX�-��d+\Ōʈ(�k����4�G��V#o~�����}�s�)�Lj�I����++���N��&c��l��Z�7�|�����雔[�a{���ң������q������t)���EWd�����N�`P��\�Ϸ�]RμI� �(B�"K�<^E�r�@�}����̛�`�"�-����Ut0,gX.�'_�.-g޴\ ]!t�%Z��I0.g\.��`��3o^.�/���/�W����!��@��I\bμ�� �(�c"��*:�32�2��̙73�Ec䉙G�h�9��i�ԥ�ܛ���"�2�D��Ut06�l.ЇR��son.�3���7�W����#��@�PH]rνɹ�(C*y"��*:�s:���
��ι7;��e3�F�h�9�J43d.3���P3�!̐'f����!G0C�f��e�ܛJ`�2����Ut03�f(�̐�̐{3C	�P�0C��a����̐#��D3C�2C��%0C�yb��*:�r3�hf�]fȽ��f(C�!O�0^E3C�`�����73��e3�F�h��J43.3��P3�!�P$f�����@0C�f��e�J`�2����Ut03f(�    �P��Px3C�P�0C��a��f���
�
of���f(3�V�2�
3Thf(]f(���f�B��H�0^E3C�`�
����73T�U3�ƫ�`f(�P���t���f�
��
a�"1�h����@0C�f��e�*`�*����Ut03f���P��Px3C�P�0C��a��f���*�
of���f(�cI�q�[D����FD��åx� �
�2�X}��Ė������#[z#DQ� D�bĚ�WKCTX�xu<���QD�!Q&����w?$�"j,E�:����QF�!Q&������%�#j,G�:ޤ�� QHԞ �ū%�%IG*i�E.g,D�G�ӾR��=	b!e�������å����c��P{��B�*I9Z)�oJ�K���H���d�V�,OR�U�Q�,e,/d9F� �',,�̒���rx�J�����1���jOJXHY&)G+��p)c� �)ԞD���IR�V���*�R��@f0R�=A��2�IʱJ��W��K� 9EH� �3�����HR�V���)�R6X��Fʀ��'�+������rx]J���ďk�����'�V�b�g��O`h��g�i�H�/^)�@���	�3@��?����+�h���>��}h��}2Ѿh�,g�}K�$���}Ɵ��D�����`i���>����>�h_�R���,��g���'�W�3�>��}C��>�O�T�}�JY�@���)����;H����ǧ�����ͻ����vq}����\otK����pmװ��������vyS���wo~��ƕ�˟��o�{��:.�QJ�&���Bo~������?s��(sB��2���%��X~�c�$Z�%�����[i�
�_�?h�͑NZ|@���P%��G�驷̱�P!���)H��D���驷�V��-sR�G�:Q�h��OO����R��-sR�G�:Q�x�|z�m%��2�z�\���Q�N�;^)��z[	a����2� eTh��V�����J)e���2W eTh��Wʧ��VBX)#���5H��D���驷�V��-sR�G�&Q�x�|z�m%��2�zK����<a�h�lߜӋ����1�� �#�����E���A�+�c��G����X�3P?�>S0�`?؏�c?B��W�d�G��	�#@��?�#$����<�#�	������_�j���9����?���M 0^5� A�!H1� $���� #V�����
H�
Hh�yH��^5F� �?$4����<
$Xh��f
,��@�X`�jf3�@�f��)�@�Yb��yH�,�aX HX K,0b5��)�2��i �ƫf>�h�1,��,�'��g`��9�R`�4���#V�,��Y ǰ@
,��@�X`�j3�@�f��)�@�Eb��yH�,P`X HX�H,0b5��)�
��i �F��X E�@�a�X `�2��x�,g`��%�2`�,���#V�,��Y�İ@,��@�X`�j��24�Ȁ� ��W�j��,PaX �X�J,0b5���*d�Y T�F��X C�@�a�X `�:��xլg`��5�2`�,�*�KRs�j��������@Y T<�9b=�1u���+��x ���$=G��966�@�
�����"����������p��� ob�F�������B5�و9_A·�1)�4��#%Ϯ4ͤ|v���3R�5#�Y��I���w��+������K���2��* yp쳊NV��O�5�*X<I�Y���*@3y�쳊IV�����U�쓺8fj� *�M���*$O^�����{�#̂E��ݽ?\�tn˛Pl�[Hr˅�%�P��[�薹�B�+��-�zy��uMn��"�p3��p%S�EJVJ~�z\Y���ͫ�'��.MQ|̰�Gi�w��Gk"-�� �̸� ό��hJ��l�Cq�[��IQ�8������J��̘��|�۷$��/jP�r��w�_���5��c�?=Z	����5������A�o�6�l�\��o
=�~����~!���%y�!>ױ	����d�YD*xS���-<��2�K�G����n���J�s6xS`��-"��B�\RH�-�|wk
W2�[�ADS��-2��B��!2�-��nv�p%ӹ�&"$lBR��B�"��&7ظ�p�&d꼉���ɛ�8��N"q"���&N�ԑ�9!)sr)n	ΜD�D`C'����S'R'"$uBS��B�"�S'�:�ԉtS't�ԉ�ԉI�Д:���N("u"���N�ԩ��:�)ur)n	N�PD�D`S'�M�ЉS'R �!,�&�)n	f�����K��өY� �/BX>M,�Bܢ�Y>E�|�e��e�tj�/���O˿��|�`�������,_˗!,�&�)n	f���%��+��өY��/CX>M,�Bܢ�Y>E�|�e��e�tj�/����O˿��|�`�������,_˗!,�&�)n	f���%��k��өY��/CX>K,�B�b�Y>C�|�e��e�lj�/�����˿��|�`�������,_˗!,�%�)n	f���%���峩Y��/CX>K,�R�����K,�7.�gS�|	,_��|�X������0�!`�D����4�MM�%�|B�Y���`��8_��b�]�Ϧ��
x�
��,����K0�g��Ч��.�gS}D_�}������#}�@�
}�<q�>���+`�*����/�/�P�!��B�XO\�Ϧ��
��
��,Q���K0�g���X�^�뗩����B�>O\�R�B��>G�}������ɾ��B�>Od�b���9�+,ڷ���ej�������ۿ��}���
��u�~���+��*���D�/�/�x�#���}{ݮ_���
��
��<��K�������3�������B�>O|�b���9��+4�g.��S�}|_��}�����%��s��h��\�ϧ������<��K�����5��s�������C�>O|�b���9��k4��.��S�}|_��}�����%��s��h��]�ϧ������"��K�����5�������C��H|�b�����k4�.�S�}|_��}�����%����h�/\�/�������"����K0����|_�|_L��5�}��E��������k4ߗ.�S�}|_��}�����%����h�/]�/�����	��"����K0��o�|_�|_L���}��E��������4�W.�S�}|߄�}�����%���7h��\�/�����	��"����K0��o�|_�|_L���}��e������feߵջ��y.�<:��<7�k�.e:� �7!�_&�!~�B�6A���_7rj�o ���/���g$��,�:^�ȩ���oB��L��r�c&��`���񖙜�@�&�˄�/�1�LF"���2��c(#�������/^-(�.�2CÑL�Y����I����/��m��r)F	g1�FQ9��S~B�0�'�/���Q.�(�&�(X�O�	�B�(�|����(b���6
�����Fa`O�_�%�\�Q��*Í������(��I���d�K1Jx=e�Q� ��E�Q<�}a��r)F	/�7
�3sB�H0�'��F�4�B���+(Í������(
������d�K1Jx�d�Q����E�Q<}a��r)F	��7
��s}B�0�?���_�Q��ɼU�(�d� �'�d^$21F���,�'$��<�'�"���1�d�`ɼ8!�'@�?����_�Q�d�`ɼ<!�'@�?����_�Qf �K��	�<2O�ɼLd�b�2�'X2/OH�	�y�O�e"�c��<��yyB2O��2������<��yuB2O��2�����@�	�̫�yd���y����    e2O�d^��� �ğ��D�/�(z2O�d^���S �ԟ��D�/�(3�y�%���d����d^'21F���S,��'$��<�'�&��K1����S,�7'$��<�'�&���1�d�bɼ9!��@�?�7��_�Qf �K��	�<2O�ɼId�b�2��X2oNH�)�y�O�I����8ž�3X}�}~B8O�S8O�D�/�+3�y�>�>?!����?�'y���=E�f���S@������x�� �)�${rBJπ�3JOH����8=C�bON��z��	I��r�2�g���	Y=V��Y=�	�_�W����O��'��p=����&^9^��3����Ğ�g�ĞЄ�/�+30{�>����3��������xelϰ��^�	�ܞ�����qe=�7�vG3y]Z��&Xa���/���R��ˌ[��(-���ٷ_6���TۨnR0��ս��x��y2P�SIw�+����E�B/��w�_���5��c�?=Z	�ڞ~�~z�p��ۻ�Ǣ�J�R�� �R��b>��	�&��	$��@�&��&M�	&H  �,%L.�+3$L8��&L8�@@yJ�\�W�	�&���	$��@�&��&M�	&H  �<%L.�+3$L8��&L8�@@EJ�\�W�	�&��	$��@�&��&M�	&H ��)ar9^�!a����	�<��W����xe��	GW��&L8p{��e���9��hn/O��9p{��e�����=Gs{yBn/�ۋ n/���������r{�^p{����xE����۫r{�^p{����xen/��^�����"�۫��/�+3p{�����^ ��^'n1^�3p{������^ ��^�_�W.�+W�,XpuڑȽ ��'�\�[�X�`���i�,��E �W$��r�2�f�_�v7���:��b�2f�����r���������Wy��믭Y��-[~Z.���7�׀5�_�����7�߾}�,��q������޾1�W�_֛��e^�|m���^!Lm�B�����I<*/NVnn�"��&�_��L��L��@�L3�O�+�]X�۰�po����co����M�=jwS�e�;��&�X��M���e��_V�z��*�J���S�FE�2X�2~){��R�{�j��j�.I��7���zM��Q����{H1����vr���'��0Փ@Փr.T��������y�X��=��{�� gh �����
�  �%�1@�윩�Y�F�� t�F�}q�o�Ɩ�U��[�|Xl;@&�O���.?���<޼X��c��d�����z�ӱ���w7��V�w��b�/3ڱ����?�3��#�����>��e#�j��mt�vo"�M���A��=	�]������,������ڷ=���f�����iӻ�.�l���G��?�6���*�fE��QLk�(ռ��"aIw�{��1Ց혲�����b�v襼ҡ����e`�̆}�u�+�����3%e댿q``ـ���Jw�L>�v{X��g�}0To�s8���A)[,�bywk�����nL �e����.74����3��-�h��D��D��d��j���2��Ǫ7Z�v(u���eb��  "�@���X]fe����<��.5�NylS�Nm�GC[�����=�!v"�@���h=�3޾k��A���S�F�~vOh��m<d����U�O:{W(�AlE��V�n��mѺM�7�a��R�w.I���]�/������`���9���&����I$7E�&�q߽����]��؀���)����j\oU���=~��v���F9�7�-|Su�LN��i,Ӻ�6�N��j���-H73`�Fdu8�yÃ=��O�W}&Φ��;6��!�D�� Ћ��z�|�NT8n��S�64�j�ȍ�K��!��$�T7MAK'���<�d^��F;���էv�>���Ž�����Α�������ޖ�ߚm�z�e�wk�O�2���v/|���lv���XX�攪�F(n����]�𼒂��jK��Ȕ2���MŇ鐭�q��-���A�#���J8{�\8��-m�Q
���-FK���m�_ߑ%lٯ�df��_XT�c�)C���o�g��bY�-�e�q�z�x��)M ��$��܇�?B{mh.�3LZ�+6<�WWxQPn_W��ņA�ڃ��}��s�� �������=ኇ8�Z�-����n�eY�(�.�uW�D���̀]Đ`������J�Wo�\uV� E��RT����w�06J�J�3��j���'�vn�`x�����,K�Ii��� �L�m���T!x>�:�fzn�u����������	E�a��M8j2��f���Vuw{��"*,Z�;;n�o��L����m4�!U��RE/W����4��r�V���}���Gh�S��Z�_�C�G�%}�O���T?S�*\��mvr�C�[��W����m隿,�,ooS�_��'��g`�U���X���o��f;�;-��.����)g� ��6���!��f�{���8&e��Ô���S�k����& �u�wm��碳	�5ڤ�E�~?"SG�Ǧ�ޣc
�P�@ ��m�۵@*j���'3`�4�	��	Z'MƝ4�� H�n#ѮR5Z�6�~#�޴v���:K���i��о����% O�6<����u�L��ݭs���gg��Pp�@V���P�E�;���qF�W غ�`﬒��㖮c��1r2�.�.Gx��u��9"��˰���wD�Q/]�m����i�F������_�>��T����кk���}��Pc�PV�ZyQ���#��sH�{Y��y�v^Ƌ럯�>��L^W��}M�)/����m���l�Z�>����j��������q�i:���ɓD��,� [��-�]���`��1B�=�!��0mQ��O�K��7�o4�7���0����O���5�]}32�-���}�S^/N�T�k>
�HR#`i�o*�{	��3��񙐲��n18��b`� ���8�"���
���B\a��=A����jt�	r$5L[R����Tyag�K��o�cN�h��${�:Z��PAj�*��O�ٿ*hءv����b3H���4��f�;I�6#��x�I�u�w��g�p�aB�4w���|���[�,�@�ĴeK~H������Q�}�w��Σ5�\���O4A��Ԟ��m���c��{��� ���iK���NY;��LxN�NR~�E��>�=�!]3a'�T��Z�q�رݧC]�l�0�-�}�Oo?��F���2�k@��#�;&���8b.v M��8�\�7�[%ډ{O'!Zcڢ5`�4�Eo���@�4�j�����oB�kY�uu�7�g�4�&]�WSy"� �2��:ع���_�<O�f�u�t��ݥOC\��<q�ك�Ug����$iϖd:�Y�9��ޝ�*����f$����o��9�(J�1.n�ـY#5ǦՅW��HW�nDK�Ic�����]�To!�E\Ԗ�x���_�tE��3�m	Yu�oG�����W`��z�����ZxFIu�@�mI���S�"F�S߮������Cm��S��l@ܞ������i�U�Zn���CvrH�S,S=̥���!�q~�Nw�5?Y=�'��ݷ���_��L:`���ī����퇧�����v�IF��H��W��&�/���R� �]�j��Y��'���94��rRz�dM������%X�-Aql���Ѣ6ɸ�Ѩ_��F�nˍ��NJ��c��q��<0��s�j�K��ڼ}��O�ّ����%���h,ޕ�j̻w�L#vႲ��6�>
�Y���̻[�c:8x6oKI��Rې�m'�lr[O�����.�s�}��x@��B�c�U��)Ȫ�IMߜ{N���X�-A�Kt)n�u��s�A���^���%����$��z��^��^��-����~��~L����3�Z��f��U�    �4�M*����8�sСp��c$(!Q{:��3 ���r�ܸ�݅%�����i�L��K���mg�3`G�Χ|����֗��:-(8�} �2��\��V���'Hkx��&�q�Id���i��X�G�R��YS�jx�xAF�D����:s,���3Hk8������Ϸ)�cD�V�77��hOߔʘ��}��mw�T?���a!%��p|��Jg��y������Y�������|��LHS��4�5��i��(M��g^�T�kP��CS� #ER�Q����m����5�p0CZ�_���?A~�,���H:�@[��P P ����)F3���r���1�A=Tu��x I�F�)��6U� �������~�l펔�y�mնqh�ʃ���Ic �%a) Sn�:Z./����}w �'ml������c�G��԰��1�S0�h�1�V��lPL����a�+
�����׫ߗ�R�8�V�ڮ���
�wr�,@�Pg�h�$|۷�9��螪�n��3�� $����������{`:rh���=����S��C��`ᴍ�����k=� 1 f�N;��P��� \r͇��5mCׯW_Y~����x{�!�2��6�`J������5�&P��vG�|�5~M��ua��,ޢ?�"sӾM6���v��o��@p]�����d�x��R�ִ�[������tTz�&�&9?�;�Z ���̫)B}ʭ��UT�����[a{�V jMۨ�c��x>_7�*v�`�ܦ�PJ��_naC��x�ځI�6&��=-��T�*��SѠzҷ
�,X��Lڕ~�~J�r��D+ s�������V��c?R/�����fJ�Xw����ӎ���qN��q�J��ྱ= �����Ҁp�&�#����B4�ջi0�5�3֎��&����}��{�t�s�&��kv�g@PuӅo������3rO���.l
*�ˀұVJW�������y!~�鮃^�:/��i�]oC!����O�����sqz.��oX�)7#,d@�X+�s�j�㶗��@)��w	�f�S�m8C<��ґ��0�m��1����(�n�iL��tdP���wc��g��%����}'Nc���;��gil,���_n��F����{��X���9,0���z�W�{u������@��֟�*,rc�Kv���%��n.�3V��[���^}(`�ꭗ5µCݽM����V0U��6�Ȩ�hźN�m4�<�v2����^}F�� �Uoo9�4fm��?nV���T��Ǉ�E�]~�BB{v7hx.���"�]����F��v\R�c-�L�����Zi,���}�v�F���p�'g����W=���ŝXv[vg�s8	��-�n�J����
�T@\�*w��!��D�Zs���M�66���CS��V���b�F��K�Ǜ�N��.lsa�������<Sp��i3.�d�h�a����]}���LK˝���m��6+F��xE�<�r�tB``]G,Aݠ=3��p7'F�!���GQ
�:j��q�ڊ�mV�#��o�ē�i�9�c�Cuąy��;Fb^7c�|J���Ʃ�"����G��m�f�x�����fϖq���-[�6wLC�,�I�j1A��:�1jϥ�y���Z�&M�vd��_`���]��h�C����aa2�
���׮�S���g�60��c�?&�]0��NgY���C��\`���%_05{N�@�*� ��8s����Q��mŀN�u2dԞ�f[��ŋ��%Z�2�3`{j���4RzΝ� ৮ja N��ŉ<i��b�rұ�����4���4�BG���<��6{`��#�f�F��;C� ��P�t��2ר)���Q�b�t����|�'�S��<4%��]����>�os�����%z�͕{nZ��W�b�bu$ǧ-*8��}�� &.��>;���r%'i�?m�6���C�ɧ\�M?U�q�j�ı��Jh�ƴ����1�L#ՇU*�a摿�;/uՉ����}��h#	�I��s��)L�P�[<�v�O@;gZ�t�c�\'���J�4O�Z�\�Nbs�$T�欉�҆h�5��2?�(�j�C@4gtr�$H��JCĎﶉh�+D;S�͙��x�e��ͩf�lӵ��I��[��n&��7*?�\m��D{A�����N>ܵ�>�}el��pW�qaa'.,�)o�;��f�ϧT�l�z���Q#�r���8m!6������M5v������t�휆��3aA��G�K��\#�w�]���'$,���؜%�G{�,�fs�4�������f������Ŋ�Zz8ڿ�dK�t�f:���,Blf���
7oj1��c�|�����l*��A�N��c*�6����{6t�L=�!6/�j���r�¾�6=Ĝ�o�~oΈ�6��t�w$w_��K��R���s�=���8�_�f�5��Tg����9�X�eՃB�L��RJ������GQ:2K�1�͍��z����~k5sV�ӛ�ᓛ���8������tsb�z�՞D)��t�˨�6`P����wa̝u��MY:�(�<�K�X���$�1`r�ͽ:sH;+��YQp�G��f�S�-xj�_'�R��ՇR�A`��aVi��(~���"�֏������j3�o4�����ugFW[EX�*���4��Th��9,�<�A�Y�8����bk!E{����6	[����6�Іj3D��H2r����f�]zN��.&��0����H��ՅPB�G�9"���+����\�{	�ޔ���Z���fxs/����[5+^n�2�f�rx~�u;�kN�q;N6��S��)=�*��[�]'_A���;����iZ{������c`k�j��������J73O>~��<���ۃ��(���p��6��i{{�Z4o�����h�B�hղl�3. ��3~�p8�6P�� �A�k�T8g*�@�P���N�ʭ���V��M�ϩ���=Θ��&��ǀ�B���x�K��ϴ��l����n-ge$��@�����)x�������-�dC
4ާ�Ƚ�fdT��;q���E	U/���NՒ�d��ƺ	���5Y�Ҕ^Tّh4,�N$��4��(?&�i���~Y����M��z��-M%��[U����T�>k�u]�>�R�l����#�X�	��OP%1�$>_��9��tx,%��y������i�H�A���&�OR^[��&4JWm{`6�C�����|���U,5O�B'w����٭�+3�Z��,�O�t�^f�ZT�H<ϗ�$����6����0��
�>9����>��dKt���1���!�f�R�z��/U������/�HUxb��d��v�b�p�>M��3(�&���T֮fs�<��mw��6e�y|�<V�O�8�����ZRfl"ߣ)��8���J�u�]�I��[X0A�!�!��Ѽ��DP �-�݅��.��%��3�,���f��b�;yH��L�6mE$r��cR� [�B��Hm�a6�fd:����l��)��2L���yڵ�58{h��_�b6����&�9�o���gK^,1sbJ~l�+O\W�����|%.�v�r�|�M�m����
��U>:�FŤ�@��-ʵ���<M���h{zNH�n?�Hr<>���*Z���Dn���c�/�R����'�r>Ez�,��h{�ً~�!���(��9'�@|�zh,0�4�3��L��8�]@Gĩ��QW��8������6WOΝ�=��}sNΝ��D܁�pG[l��b�sǋS���p�6�I(r�@h��G�Nw A9�V���9j�RB�v����}�}�`˴s�ۜ3��v�q����I�mO6/I�Yϧ���\�:62Aai5�j�� �\�����,9c|L��2��o������L��'e�T�J���.8��<�2�(�mF���ѧ�_bΒ0��A��
��|3D[X-;/;�]�݃Հ��
ښ2�{a"�3̊�}���H��M��a�?����H�    ����T�E#���$i���/R���p��R�l��iԱ-��F��#�����?p����F=ޣl���m�u��c|�u>�B�i���9Fas�W?��@�<l�]���7r�k�V����Zidy�e�0:�9�l��@��A���c+�	�_6�Bΰ�2��3��,m����0(dĝ�v�Kt�5ѫz_fz�rޝ9���p�U>����߼�49�~�9w}Kg�������X��W���XW��܌	�6��w?'�&
K��S���8��Fg-���:��DTt�R}jE�أ�#(����ۮ5�B�8����*�}�S-�=�ϖ��Z4f�C�f�<-O�6KT}HWuMt3q]H��kn+���P?�Mh?���9^E�}t��~{��z��w���0�'�fcpjm6n��@�Nb��%�4�֝e�F(�T�F1�c㢣��-�L�H�m�O�6��1?_�=;ϛ��5��Z*v�ѱ;����nvjsR{6�21��LL�گ�^S�S�͞�J"y�1����S�ء�{O�U��-��b�"��u��Ř�m
��(حUI�A�Ƽ���X��R�6�c&˧�Z���*��E��,��~���БmJ�q Nd�����Xs��w�F�j��mM�ԑD=��hx`�`���)��̖�%Y�Y��6��1FSR�b=!�MHt����h+��&��
a:q�S����)��%�i�*ю�S8��4��y������~]{���{�nգ�Y�k��I�wn�$
!I�J��ԆfRu�Ϩ�-S��B�׭?�m]��m��-eRk��wu~���H�d
��בw> yj�T#O���M�'��vsP>3��>�-��榏�fY16��2Ҽ�
D�MU���Љ"�Q�c�R��P�tb���#\��M�P��fZ���Z�����|����s$�J����&��.�P�T֖0�}��JV�Xm�KOi(9����f��Rb��_��IS��ju?K��v���������S"Ě"6GG�"~��Ҏ��*����cD��ݙ/][u��R���:�j�?G��C4l�ş��x�!�y����4����ԥ���f�t��Q�����:^r 9������y��3�
n�mè�ɚ� �m��0�a2f�{�YB�ct��vc����q����y4�|����� 0�=´�]8J̩ޒ�9��Ҹf��b����v���b�'Po[�c �9E�<�q
�d�E�!�S	��NY��N�c����+X2<��*4gm��-�<��=D�:{.jw�V���\����ltꁰɱ�SH�6ؤ�p4��@��ao�	hW���X�yg�:vz�=�.KN6.	A{3ıg�R6R}"������,lf�ן�O�/�W��ǭ����6DH@��b�h6{�ܝ;w���T�\}*���z�:�Y23����%x4�l�M=�'�̩G\�/��C��"F������nmA�I3��(4�w<1��؜�w�ǭ/�<��M�v��R�ubH
B�Dp�qC]*F$\;��E�H��j�l1(�1(,�E0<�bD �6�HF8�%<µ)Z�'��>�M�K�pp�����(
����E�p�L8zᴱ،%���&��c?K���Nz<a��*�b�f;=r���R����"�N�;j����e_�ˢ �v�.!d�Ԟ�5g߳�k,i����j��X�E��gw��s� \�מ<�����	b L$�P�)E!cf:!� ����H����?��Z��-��U8�^�����t�^�$�W?p�%��V�O	ڿ�(�.���}�t�n�f(`3C����}:����������ޜ[�aZ�?�G4��;5��=�zW�_��K���NiE1��W��%h_����l��ĳg%:�K7 ��l�w��0f��ϊM9mo,މ����Z},��6�Bg�LeSJkN�e��u��+e����s�ԕ4�i]H�8��J޵�:V��>��9-T����=GM���*u�P�v��� �A�-�����_)��t�'��<tu%5Ol�:qb;s��1-���Kr�!�@w��՞���^}*��՛/�dQ_��Q8�[�j����ʴ�t=W���d�+u͵6��9ޭC}��:+�v�Ӱ���DĔ��'��[W�-~k�)���sm�����W��E��^¶z�S���'J 4�R�E���4I%.̝�%�;�E�z�e����GP�
�I���+!hh��Se���A�=-a��d|6<��_��V��<���O��$'�D������hɃ�{���(յw�#(���v�A�#-ᢷǜt�0��D&ғ'���$����M�����Q�'��X}��pǷݖ����ج�T���j��U��z'k_0q��P��-X�]���̉k�o�B�f��QÁ�m�A�fƙ�}��}&�l(��7P{ܠ�㦉�FgN�����P��a���6	��g��l.�r�am�pW��f&h33���S:��1<�ϒ����[tn�Za��Q8l�N�mؕ�z��]�O�w4HGO��L�fg*��/�g�G�Z�l��-���-��E}��m�U�Y��������ŴT�ї���m&������f���������~|r}�����R	��a��ح��ܿ�(J<�t�a�"c�=H��A*��Hg�MR��k�AnQ}�щM�ǣ`�FT$�)�|�I^fl�܇iHۆ��6T0͇�g�3����е�4N�8ԭ�T���
�M�JIE8���V����{���(�ޫ@����5ϊ��Ǘ�W��G�>�ȿQH��Z	#޽�������_���GJ
%�3G4=��8r�Z��V����t�Ӊ��7G-�u�`Pt����y��F��o�/%@�X��_��hBN·/��_Q�
C����gQ�+`������H�Pa����sA$�����Jޮ�O��f
�%'i�%���SWϣ�����]�2_n�n��8�t��H� 
3���l��"��\,Q�J�2#�D� rÅ�Ē�&\~-�H/�i,�F�RՋcj�f�p/f���p� ������Y� �_�(;���.Y/�Y~o_��(�n;�����.�5��J�<|Yow�wyWH��i�*l[��G�(ǖ~����^\L?�d����o>��R�Y$�8	�, D���2@ F�0Ė�?�ChCg�8�<ۀ�To!�F�����h�'�����1cV���b��ߣ���%��_�|�On㯻�F-�?T1\�nF�*�x\TsUFQ�Z�7��;.C$ p�ǌq>ƳK�q׀�v�ݰ��!kH4CW����J���ӈ��<���]H�$8z�H�����M�Tk3*�@o��>o����E�v�k�욢��X.��q�\��������_�����a��$Ճ�A���� ��.�_�ǅ��eYĞ�9!8��6��r�^F��w����IP�+E�|X-*�A3᳂���D�h�C��?�������U	��d�k�
b-��<���l ��g���zW%������ ?��?�p ����C��vW%����H4��W�L~��`6��etz��Gt�fK�:���=X�p��>�9���#������U��k�-��Þ����� a����I��`-�B~#oj���6�%�	���s
�c�䘄���+c!.����vCU����]�|��% ����U�B��ܢ��0aA��WqY^��3�Y\�'~[�^9O#>?�ʏx#��M=�3D��Y��6BV����=����k%�^?۾�Gت99��@~m"��V�_��O�m�!�ś�xu�m���gB�� �faR��,6��<1Nwq{��l�L.������������k�W;/� ������9B����!^h�/����������-�� @��*�v'�{��!�i�;��t
 �Qq��t�~�@���t< е`����5�S�sz�a��t6 е8����5�3�3:�vIy@��a����@'Z%���й�9Mtt4 е�I�Sj@��t:��@@� ]��:��tz��#��tH�    !]�t-p�j���W�_��v���D����A�v�q}���������[��^>��gވ}\}����m^��4_�p6�PBY~���нz�n#����}������Xn���/����TbSR���ȋ�E�����]pL�œ��Z�'O�Y�U{�����x��'��&��|�jQ�K��e�@uv�9xknh��Xm�����C��K`�<���dkq�����Ѓ�<A�1�b��
��pJl�ib�A|� ��,�Ĩ��(Jl�hb�A|� 擽�yo�6�z'������9b�M��1l�t�a��Lj�2��s�0u5�4�a��Z��6����	=���Su���/�a��թgz�z�L���]����!�|!+��.d�T=�	ܼŮ:���Ҭ�8��xŁ`�
��G��M0)���E<9 }�ٸ�����|���SH���>�Cq �)����|���������~�<�~$z
�#8H�`�Ms�U���n�YM��U��1�u չhZ�EK��ܨWF�Pl5�h��:c��;�bL#0��{U���m$9����k�~VU�O���� 5��0�괴�.�0����#a���Y��B�ɾ�w>�y�x6��G�jVI��Y���ZY�{�Y�}���}:i'V)�#�gKJ��g�T�͔*����H��m�i��CU�5�`�G�h��H:Ѣe嗖�m�h�j��u������~��C._VFi!�B����"�;����I�L��J��SB4�/����NLO��"|M�j�,�qo'$�)6��VH���m|�����̭@��W�>�_���j�4�9jt�9j�h�[ڨ�Y�l�B�xv}I�P�N���b̟zd�V1.�ɰh��X�l�{�S��VM�ix5�a$��H�%��,����v� 	�u�+ʯ�^�|��4=�X#�m�����e�����7�g�{�Q`OP��v��s��x��h�A��"<���C{U�p?F�e^+����_k�ZaiJ���:�y�Ѕ������y�LW����On��[����c��y{��Uz|�wy���N��o_�&��b.#�����e���<��S��/�]�z���v��}8캯�ǲ?GDv�2�x�)�]e��cO+1�2,x�2++d�wѧ�a� G��%��4��#+N�Q���^ ��=�9 ���K���x�"$Z�x%�VǇ�Ze���(Z|4�����e�G�J-蘁w ��9ᘌu4�w1��U�(�BQ|yy����������G��Y	���4p��+u|��h~a�}��X���3��]����W�w���~�R!��hxm�������k�J�4��D�b�\;B�-��;43�n�2�D���0t�|�ϵ��)�����f-�I�2�/���'ɵ��*=8�*�8�X5}�6$��o�E��x��;7�yo�q'� ��^���̱3]�����?���q���SO]e�FM����)}�N��ނ1c�Z��qX	��aX�w�nW�k	Rj�V	���Z���@=��g�(���
g��1]`���w
����K3��q�x}�g�sq~1&NZe���f@ �Tp�*�
���
���R.ס���]� 3�-�F�f��L���R������,�Ů�$��g�(!<��G�;$�H��Gy�ݬ#���9���d՝���?,q��ai�B�s �N�����a?lw_$��Xx��EE��΢S��R��>��D�%�X2�������Kg�nn������Ki�!7�'��;Ɓ*��6x�G��H�B��:�ϋ,�u$���:	����"������A:��X�Y���U|X�g�6�����E���|���˽E����&y����h�["��Z�S�	?�t�����7��fJ�����[�~5�fe�����&iy�e�w+Z��8���ӟ�`�l�gT�*���f82�Z=��r��k�m��EW�=����A��6�,L�Sb�9�`xn:�d�1>`�O�����Q�!L)]�~B�>?b�Y��/� w��*(���9r�<�]� X�?	�}op�)�4�ϩ�m.����Q�g�~�H�vc����=)b����� ��j�=^������7�8v���K��2F�@���Rz�Xc95���~��m� ]6��_�L��f�{)�I�d�_u�[m�fh�Q���(l��j&��88R�`�	��y��@މ,�ȂtC!T\Ւ4��B� �:H*o��\Z|�
��:p���}��k�qy�j��N�2Ŵ�x����W�~�N'�b�UǴ�@������Y�kfϢf����c�l�8kf�.@��W�Tg��7��V��r�C���X�!<o4��7zr��]Zx�I�BA�$�xy/n����z���vfف�W�$��~2�g���.�ø�q���S`����-x����.���o~J	���C�Z�0HUw1 x��X	P��T� 2�e
����Y ?;4�v�
��6X�a���7��/�2������OK���I�>R\�G{�ϡ���
�{�Ny�k�(\������v��[K���*/��+}t4��A��,�ν*K��X����U�����t��v�]{����[
M�����U~� �O�~Ktr��R�dH� ���ߐ#HXbR���=�ЙP��ޝ l@����hF���O�u�,��S.��,ω�r���S@��"�I�!Y��?E��ϵ�����1����E|�pl���G��KM�>G�}���1���_.?0"���p�	����I���F�we��㶽���z3� ��H���Rq+�̤��V��8Dw�2�w	��9�ձUvl���Te1���_������]܁zh��s���b*�#������#x��v]���n��!H��մ�0�9�q!y�x����G�/�w�.��~�a��~��G��;���3�Uf=1�Y�̠|,������Iy����I�����!��[�U��3�P_o)�c��1�7l8G.��;L=�<�J~�2��#��{��Q�.��so��a��){�`$�n����_�aI�����?�x���Y���>������]�|^�=���u��v�;�ܨk�f�d��Y a�Q{.��]-i��d�X���`��� ��}O5נ�P��>P���2ּ/�Q@F ���`��>#`Ok��#�hI�PS��>#P�)�� �k:��ha ��[����}a�G ���4��(ă�\@��c� װ/��u� m��d������@�T+Qڨw���m-�l�6�o�3�6�歍�B����֒$ �(ۿ���|��6�h����z"0�0�o��6�yk���N�{hk�tG�[���]���0��+=B0�[[����>B���gm4�[����\����#(u�~'��B5��g��<^4^�����vw��D�}nQḥ[ Π\;����� ���O��v7�b�����[F�՛���xW��2$���}N�F!#�}�]��~��:$�Ȇ��}V�&���A_lWo���	�1�C�l���5���ٰ/��7��Z�����~��}؆���6D=�]��~��b$ĦH�#�<�gi�Ȯ�D?dk-��7�GP19������i{�����pF�Jw������d^)�?Bzg晃yY:�,�V!;�1��<'8�!�����*#��p�%><���9�:��rZU���f~��<S8�"��WH6�����BS���<[0� ���j��f4��Q������x�9D����f�f{�ׇxo?��7��y��嗪�b��	�s7�z��N����Y6b{�@�]�Q�X��Ro����׫׿_�ǋ�M�9�����`i��o���w��<,Ẋ�l�zڰ)�n�"h@��^=B��<��	�3�i�����QGF=+�>�����)��F�ZR�6�����.i�i���ߒ�;��)&b&6HT'L��~�ɝ���%��9D�2o���/�to���3߼��    B}����j��L����-���;�7w�&լ!P�y���4�%�h�����'O_<�Dy �<������|��&��֯�[�6�A����I�q��n�jq��IA��'ۀXk���@_m���G3�hi�W�q�ɼ�r���۟� A�qU�2������3�y%����z�k|��C��z�릕�_Y�r\�S��o��"�7��>+x��޽ǐ"6��J��%y�Jn�|2^2
�����p�{U���-�"aG.��=?�N5#�4
Y�b��Ў\�{vȝl,{#��A�;1�#Wx�rG�m�5��'W���11���F��L�;z��\��y��Mvk�#;p��w2�v�K�mp�%@l� %n�����v�@���W�-l�[-�a�$'q�<n���m�:�gt��3W��فK<p����qq����V �]�@^�8;��� ۀ�[�@m�l � ���Ÿ���F Z v�y��쀋��qIo������]~@^~8;���_�[~@m���a�Ȇ��[��IlR��AzU �|��qvp�,��RN7��o7ѝ��y���̈�$��l���KNݽ��b:7Og�!��c��f�9�.�: ,�y3B��<��ᓽ�{g�
kNG�k�;��������Ĥ�ὰ�tD�N!�"����J 	��NF"R�ԏ�S����hs�_]Ň���ϫ���B�0��t�үr��'֚����Ld�����"z�!?�Ȉ"�X�TT��t�m^��L0JK��
���I^wZ�Tn�������٤Hd�"Z����X���f�*�o��	�}R�<�C��А���0��� �'�.���/$V/@5�], �T���!1��Π�$���!�����'"-������Lj�u��X��?l^d:�B&�\'Er��_�L֢ß�h��UA��#͞����_(�%��(��Q���E��)�+�/�J����s��ɿ��bP�r�Iβ�� �TrX?����G���U��K�	�h}�)��?���)�ņ�wz��J�a��7"Y'�i��#���u�����T�^�z�Fq��*�`�~0�)��Ѽ0<ݾ����-P�hQ ��?�]�_�ޭ��H�%�z���釫��U�Sɳx�l*�tYzڻd���7"YWPTE��i�r��*���
�d0&��{W����L).į����U9~U��˽z�2Z�Lz'~X�lW��w�C���5�ӊù1dsȕ���J��Z��	��7ܻ=��R� 7��>kpO3Xs��Z)��R��9	U
|���6G�;�Iݢ�\5�T	�p��Ρ3�]g�Ƹ���9�uPs�Nb��7���q���hm���k~~y�݇M����?]$�06T��&����J"�z{w��w����ݺ4I}���<�?�o>ɍ�/�����.^�7����👧p�d0����g�~�ެW�cn�*���|>o
1P@!�!���B*n�G�����x#��3Z�����+/��M��GH�i�����6�b���i�^=}������v#)��]������tM������ߔbuF�gw��s,�/W��eC`	~Ʃ� �j� ����Kbj
d1�W�R�F#(b�7������.B�����(7w�ϔ��O�l?�B"����$�s�~>��ˈ�x�����0[`s;�Y8�a����h�K�!�G�!�䗧o�~8��7�W�V��?J���o2j���@s��hL�Q��L�.�3�`��	F�k�����U��ċg��G/�ÿ�}�cpT����NY�Ycѝ�a�7�v�y�65�����ϓ2�����׊'Cn
�����.�����O��)������TtO�0ԕ����8k�5�>ʰ�����?9���}��{u�<���mj
��S� �E��2b��� �O�[D�~��x��Zte�Z�B�ӓc��"62�_볌���!(�p��g%��O/J2�A����F��f�������}��=�/[��x�=��gEb�P ���i�����,U�E&�,�����:�]}�4ZE��w���S�`���rr�"��Z��[Sk{D���K�u�|H��Ew_?E?�[�&`KW�ga��<yo�5h&l�QK"�ui�u�3�/3�ߓ0�DF�5q�!ן���w�����?Z�?>l��3U�]3�`�t�Z�@�n*'c{$�y�[hc�)�u��)�Ƙ�U6�uv�`y{��������F(�'��v�E��0- �y����ѕ��pLA��sPI�������Ct��`���|:���c��b�GHBЂ��I��:��$ai��8-(��+��^���IZp}��}i�x&·�-|���^��[�H����l�jo/8����ts/�����:�3�\���c�<������ſ��]y�ƙ��fDI��*y���|;W�y�7 e���x{7BG=)c�j�LmM�ؒ�8m���3 ~�ɩ���0��cd�v5p���eǳg@��u(#O{�X됑<��i-Z��N�|n�����2�� mnA4��,9y���,��V�2!��4!`����,��Q�ks��#��W�y�"�Y�;'�&���/��~�_�ø���mq�V����n7�_7f�C,��1df�џ�4�I�$^��!�r'���#J{����|�>����z����~-V뚚�~	.ZQp��������q0���b��3��(k�aHCAC ��f�"�Q��	 iPp!W������wK<0OE�'�$Y�X�{�_VT]��"��-�OZ�&�w�\����Nn���S�*��B�� �_H=']��+��+��d͘��j]L�;C�w��߶GS?@��`�&i�ը��g҆l�:�~$ �i=\Aѻ�<�kƵE� r`zl��S������
��n ���csv�DS5��ۿ�
�Z�āM�9;l�F]����	n�M����&�؜6��X-z�&�6�b-
���ϓ�}�n(�\�����h�ۺ����An�S =�ǂ��0������8�n�^l�N��)��,�������=�ދ��� o-�
�7��>gxO�}�m�N�7s�S��o��}��j(a5�����7pxx�5�'�D���DgR{t
���wi�sf[\G_��D$�ꕣ�X[��[��bRnn=K>[���-$'� r ���:y ��P�PU�Ĕ%�<*�o��s  =i���C8��B�NU����n�'Y9Sc
�������_R�x�[ �p
Q15����U� B��Z�������m֊oBM��W�v��o�$-�������˓��� ��� `��D�ļ>Y'Y�d3����B��jL*�O��e�[�Y �ȸ���9y�l{��P��1�8&mp�B��s��DIy����P�V8�ǅ�yy��$cy����T���6�rO+}�qvl�+ �B��x��W��Oo��~�")�d4@�HFY\��gb��6�|f��GE��<�$k��H������C~Ih�H�8Tu�F20M�Bj�|�T`��i}כ|V�=�ޤ�(����<������%�:�9���ELP±���$�^����%�'
 ��AGU�d7���*BO-����WmQ�1���`�.N�2qͪB����/���f[\�G��7q��ː�4�H��c�!�a
�p��fMT!�t�{�����>���n�J �I�,<�n�\�B�Y!����5}s�[�"���-H�B#V��h\D����*3 ,s#Y44��?�6Þ�dК2(4姗�)�����F��WR���G�ؐ\����:��~q��J�ZU�����x�UQBft0k�ƃp���"��*�%��-®&�`g�[�X\��%��]y���.^�]ZZ ���KaWe�}$���[3c�L@mߒ1Fm>���<�-g���OG}�?�1N߶ -�X#����f�����O���@�fw��yX���X�z���a��z�Yڇ��%-_T��OϮ/e��Y�P��˩��('�b�{w    C��Zj:*�Gۛ4G��_�b�Ʀ�f.7#�A	-������������˧ג϶w�/ȕ��h���L�ĒtX:���n���6��Ut�v'���<!���z�ڂNM��"09!���N!5�	��G�H���(]�U}'�H\�/���3�z��m����S���z@��i�(h��lh�Q�oI�ڍ�G3m% ��f?m?n�'��O4<��Ap�z��M� k$���t>Ft�����̆nm�V������������N3�gC�A�V��nt<�iC(Ϸ�ѝ2Fc���^���K��
n�>��J���c{^�A�\��G�s�#��4E��.S�i@�<�ɝ:��t�����E�ǃ
���z�p\��(��aP �y���JE`vD�I�7ވ7�w��n��Uw�7ۻhs���,�R=Ss&�@���o~�E������o��¼Ԁ$�2����
�9�]��#:^�q���}����x�q}���i�	�h��!oc6��h�審�&Sf�	,��sL���2c��F�S#�ٜ���d�C(���=�^QΖ�
{&h�,<o�^U�����n��������uN|}��+'�+T�L>%H� �%fA(����r��]��0._�%R��EZ�j\]@���iy�^� ۷�,%�d-%��[-�)h��I� l��|z,|j���O��m|�I[ j��|z$|����F�S�y�>A0!��_�f>aϧ�§f��X|j?4��'4!��)�f>ϧ�§�"����~���OdB>i���z>����@����W�5���+�I���mqfcàҝpp�Q��� 2+�a�}�Іcv�A{g��6�@[k��Л �6��>Gh�v�cA{5��6�m��CC����C��'����9�=���
�B;����9Bە�	ڨc��ڨ�������C���'�v�|�qhk�A;����9Bە5�+�-�&}���^��Ц�����������6�m��"l�6��>Gh��rcA{���ڬ������C���'�����yhk5��H��ȳ��j$T��}�H��HdW#�W#��h5�F�>j$�j$���ȫ�g	�	�H4�����XK6��l��>����K�����O8>Q�]^�ë��eB����W�W�&���
�ML�(d���0"�����$���,fdE��E�?�n���~&����L?�ĳh�_o֫����&n�/4�d�F�q�Y��勸}��MRd�O�, 2����GN$`Vҋ�0�f�f4��Q3�� �M�;�`Q�ɇ!��c��8&��p!���ߵ� ���b4�.����$QGV�!��!%A��8P�߷�A�� g0d,���,��>~8�B�q��b*���>��ܛ�bY3�`����3����Ť�`h]	�*�b@��W��$^�����6��Cb|�`�!H�=@si���`����`�K��u��5�Ypwk���؉�A�%V
��M���ai���/R�H��ʈ|������D�-S�,.���~����c��b"s�c�����@��Gv�y�W{����aL[o,��d<5n~�J�NYbv����{����{`��員�S��HQ�ܨ�!A&����R��t�nzl�{����-nj4g1#4��1�H�q�De}c�y�/օX4BZxH��Ac��� ݱ\�i��Dgۉ�M� �gA�:8@��S*8�Pn� �XrPz���� �� ��p[��"f�)�m�>��7��ٕ6��PE��	8�*���S�1Q�S�C��CEg�I���~�J������Ϣp#��9�A���"�� $�57�:s�@^1��I�-`�T/o
p�826�QX��vL���@zS�Ym݈9�ΔGԽU9�iyR�寞>��ɳ��?$CO�������4A�c�g�&J��_��`�ͫ�����u&J�����/�u/��]���Is�<�Wz��i��� ��S����s� :�m�����y�(���ʑ�U7��cށ*!��6o��!�|�`U��]y��J���[<��t�%)�ج�u�!M��g	a4U�t�) ��@X���6AXx�%��e!�B�cmHa��ZC%�	� �>O76���@J��VѰVO	o1� >G���ýET��`X˥D4b�x�%�'{�VMi�a��Q6b�z�#���r�i�nr%Ws�FkᒂcK�����z�xu�v�[��xw��������S��n$|��W Jg��d�	��UY�����4��ߴH<c\�iL=#G�=	�:�@���-�c����M�zVC'�Q�|���27���f������VA�ǔf�h	�B�k��8��?��ߓ)#S�
���d��=i�{���z&�%{����*�k�L����7�ѧj����qt��"�ɪ�wr���S^K��D�`%Z�ڻ��:�]��Z�0��?��hK��Cl��RM�qu�j�9VC�J(�~0Z�l�ǓS��t���W�\����K�*
\<��@��Jqɥ���$UT��^��-N)�;��*;t\ȱ�v�P�o�e�-	�<�  � ���
3Xⲋ����5+w�,���^��M R���Ċ� Z��%���S�r]��P �K=�+�Vx��*?8D�ɰ�gP^�]�$K �T�jY�m���p�yy�'SQ?ٸ�C,_g�HO��ݼ	B��Va��RS<��"�?�by)��J�u�Y#y����FFi��v�*������S* ���f��{��}��eN�� ��R�X[HF{��t#��>ф;��L��r������Q��h�@�}�B��UB#�_<y{�Z%.�����[�xr����|�&`zp%�٫��O�e���	"_�]��� �n�i�E�?������Z�|�֛œ�8���+.��M�DC�@>ub�|!7�5���=�Y����Kv���v�6�HA(�v̛�?�/2~���T&*5�������oW%W���]��-) � �(���EW��=�	�>��6��;J�۲-'���1}T��Ew_?E?�Nџ�6_�Ϛ�ۥP��v�/� ��ԷKc㘬Z㧼Y�x�6r�ą�Q�����0�������;Г|��O"�q�Ԯ*���"���}Fr���8�2��!�۵@X%rz�iO�=�3L�d�=�\`hG����EH��C����V^^^$���J�┢��:�J�����>#���ɽ[�֐lOm1�W2\s�IDD��o��xo���&��������By���H*�5�E��\T� �k�90!�4�(h�p�,r��Z?�<y�?���:���ߎ��Zq�эi�'��lq���+1�y�y�i�� bN+3gY{A�'����eZe��8PF[ ����k�9u]3_Ǭ`��YS��S���$�cA�IV��]>�a�������[$�_�>�L>9cS�A��2䌆%y�Cz��8�J8&������ËM5�w@fck�HX��rd��oojs<��H&�Ȉ�g�X�ל*Ϣ�j3����#�&H��e�����y�@��k`>�ʲ �F4@8��T�E�յ�{�^���Jǟr�}�'X)w���Qg����ī��Y!6_���q�]iԇeɯ�NF��?%}�L&�{�E��5�l�2V�ѿ��ڌ�ܥVp��CYx(���T�X�:�jS��̵�C+�a�|NP��%�-���D\k�ء<���d����F
A(kq�C;����9Ay�֣��H
a(�Bl��PF�ge<ն�wl ]�2�em ��e�|FPFSm�x�dXm�w
���^J�֠L<��	ʓm�z7���Nx�@YKۜڡL=���p�m_�Ѱǰ��j��Pf���ɶ}��D��ȉ�PV� +�dfP��W��BMv���P�Y;5�k5���d���szU���
��d�CM�ZM�v5z5���<YV���{��B��"tx-��.o���,�ͣ:��K��"��,����Z�H&Ky�Z���!�3�{bHsה�(����CrD��6r�y�|Wi�    a��ؗ#�!9�Uu�9�=G�+�4n�G�H������䈖�n����8�( �Ƒ���M`����# �$��H2ݞ�})��$�i�A�I<I�'�4뷣��}op3I��ڑ^IPi%I'�H������.�oE3$ђD~����!��� ���EtB�zA��~���C���MxȀ��5Tp�
ݫ�ƭ��N�/��jm��vٻ�w�w���.{Է�|��6O�L�I�]�d���K�Mi[��hg*��y��?A��n����d�Di� ���??'\���.�W�������ʺ����b�|{ym�t�=�֠��9��t�V-�7A�ƹ��5{�����t��BKEy���`u��ʐ�=YTS���̸�^�Zg���e����n��2I�@��d�(��ׁ�j�ʎ
�޽v!��&GFA�)�]Q`�������R i
�����E��J%�zS�K�)����gO�.^��}q��_�9�iF�R53����{`�0,@�?��5K�܅�ɋn���3�<:��|����SУs��@-)��O��hd�� XB�I��ID�s4����R7 ��C"U%*��ba(.���,��]��1�������T����%��*:�/�G���p��t�>$��1��0M"�"�?B�}�3��1HX�c��!H��N�(G,�>��E��`b`�by\ӈ;i�wݞF��;v��E�w�B�H8I�wݞD��;�;$Q�]7�@�A@�$bK�=�7�F���摞�'�K��Bb�}0��)4�2:ZK��P�UH{Q tR�%���#���!�њ2���� �Zb��~�r;��Q���e8
1ޓB��^�`���S�qSH�XғBCXazQH����8�0��l�}:�S�#��p��␼��$�N�t*��%�	��N"0BFa�B?��)�T n�K�S
��Dp����F �&�O�}
-�O*<v��
���]�$��) �O��%�i��N"2B^ar����~$�ڧ �>�';����8�QA�UOi�t:��>���D�t10�{{��«P}@�E��`to���A�V�N��[@��t��F#Ep�B?�U���+@�_�-`K���N�p�B?�u,@�X�N��[_G�I4J²ЏD}�sP{�ӳ��%�+�c'a%³�sS�w%Ҟ��,��b��J��I4�B4�e��BԓBڱ ����,�w,<r
���!�
�ԗ@ڭ �n��-�Oo?r��aV�Š�a��*@�W�-"K�Sۏ�Bh���V�^B=�H;�ө��wT���¨ЋB};* �S@n����)4FG4�K�oG�=
��Q�<��言&�(�Յ�v( �C�wT����ܠ�ן��?��	����������>9��	��N�<�F騀&w'�vl#�N@nw���I4JG4�=�wG��	��O�<�F騀&w(��G�=
���'�(��&���v) �K�wT�$���ܦл��>��)��
�D�tT��zwT�ک��N"��';�F��'�*�����W;�
�!^�>���Dv � ���Y4�[���
U�����4�~��+\�l
O��N#D��� ���4B�'��g;=� \��~�4lx�Z�K#�z�H��ӷp�z�O�GN#!�g� ���,�'��o;}׀�&Y�DO�|=I�AOi�v��U�,�I��IDG�.�[�I"�7��}��[��d	�'�#'aS4�o�'�`�=��-`�o�r�$˓h�-� ���[�~"ڵ@���k�$y
=n
� 2�g���H;�ӱp������	4BG0,�cP�0�h�q�T�/�>r
��eV2�[�Y��*�W��=ɣ��)92�S�oF�h�q�T{/�>r
� ��]
}�!�=
��Q���Vx���@&�(�u(�P n������GN�1�rdr�Bo���v(��=�F0n��
�}�D;�ۡ��½C᱓h�""2�C�w��v(��Y=��Y��-
����j�uzޅ`�pn*�$cT����!l
�T����D�g���
��Tx�e�s��Fx��
t�BO���v+P�[�](|=����wˢC�z��l�E�c�:�T=���=v�ở�!,�X$zv?�ڳ@���w�-�O/<v��{��!L�H�z���ڵ@���w,�O/<v��C����M.h�u�ީzV�\x�$�#���-�#�Zо��-��b�|jᑓh�����^�TО��,�C��=z��aY�Š�k�v,P�c�b~V������!�(�w/Ĵ_���
jV�O(<r
���c������*0�WA:��GN��!6�S��6ĴO��}
���'9�ư)��m
�]
L��ۥ��K���c'��96�K��c�i�s��E�D#ط��.���m�]
��Rx�� |{��$z���v��C���w��O���jq
�������Mt�>D7��N^��08�_�z����:�r���8ƴ��Dh��K�
d��?���a�U�����!]�r���Aop�z4��9] ��~����Ao���}8�rϜ��{@��y��g�y��>*�� ��J;s*���ؿ�gy���7��By��q�T��C�v���a!������ ��J6w*��Հ���7��zL�x�;s���Qo �;�8���xL��h��;5����������\�A���l\��s�S�}���7�����In�bG�iIOr��r��J���w��!��:`�u�k핻�WB�kg��`�`�u���+w*������K@���+�$�Zy�N��� x�u�����V^� ���+w*�����P��<z`�?�򊆀��ʫp*��D�g���F�x`�u�k�U8u�b���s�G5�u�A��uW��]�I������w,��uZyN����C~��`�?��:ܵ�*���k��w�h��6�hwsX�,^m���כ���w]T�x�zB��2$&*�e����l3$��%
���囟�޽Z�g���`��Ls�m�����e���������|_~��#��gIǛh�����|{���� 4��@XFU�yj�eщ`���x'�*��D�}���+�q���I��DB���
��IFrt�F|�U���,����>嘖���Z��
c�a|~0�lbw�\��� c�D	n�1�0>C��aܱ-ocv���$������`��=�;��-`�[���b������� �?�f�l��ݮ7�!^\���/��	@Qj$�����2�u�����!���u��?�4B.�a@0P��$��H}%f�o��`#�B�C>��	6������"��72��� FH���s7doA	!bc���f����[�ړ�w���;��mV{��W��Q�K������OŲ��@S��.;�.3Q�L݋��̼��x�^���8�g��2P-���t������/�?���ȶ�9:I�.9�RGW�hA���C���]o7ѝ$ �R��sI@f���2���+��9�z�X$��ޱ�7�;r�Fn!���/%$��t�F�:���V��|�@�@. d< �R�/��3r�2&�G�b�� �!3G{T��G=�����c��&��� ��k�zܻ����^0a˽�4g�#+ud����A�]Ĭ�>mzU�f����-O4Z��Wr/G�lh�'h��GV��~����E@�d��BR3�,��P�T |��D����������cn�О�ݻA����R(ï�����͑M.�(��Z�C����s�Jq�2B�{i*�x�Ƌ��b�����*/H���i���U����2^\~�6�2��*8p|��Arx�����FEIe�T���� ɛ]�|@F�m��-.#Qq���:$�H� T� �y�_�;-�_��2����?ƻ����5��l�����2U��?��},_���	�!!DB^�C�hb�
��fx    ��"�i��K������iJc���Y�b�W�"�ʩI���#�������0O\>*�7����E��.`�|�a{o�績ɐ+����z�i�?t�?i�45�����;� ڍ��E�z��#�dLxS�"T�!P3;0qE:�GN���&7����=s�XJ��S2�Y���B��w\=}���d��]o�����嗌��)E4��t�T=��h�QNn�v�����X.��D�!���Tp�5/ܲd$c�'����H�lF����~����j���0��IQ&�U ����S��F�-�s�PA���A�S�NG9u
�L�cm�YV���אs��n����V�B�H��# ,S$���)R�GT�������3����)���"�ܒUژ�11������-葞X�D[���(�rss��n��������*>���}�/r�2=_���|��0!_��6
P�(�]_�#��R�)�T3♊j���W�������[���{�rЁ%���. 
/ p�d(��N&���lҗdt=����
̩V$,8צ�J.�/�=��aϭ�)�c�m'�n���X���9�{�gh�m�(�^�.��t� �K��H.�#	F����eLOn㯻X>������o�$��҃��|���r�P��� 5�� ��)�W4h���!�et�e(m�A��R�Y�� 5/���bMq���:�� ��ur�񄛜p�V��8��Ug�i�q��s$�,E�'�L�uL�h!�c��Z�?�\���v�#3X&J~Z�&��*=d �\E�����!�
�JD�����}3� ���O�a�E�p�m� MfmB�Q�]ȯ����Z��yc���z�}�%��"P�X˃ž:��姻#�)
�y+�-	g�T�.b(8���;g�z��8U�l|#�kc�~I	V����/�������רv��5��ktίQ<�k��G���üF�ui��j�g��@`��+;�>-�d��E�(�~=S�J���U��:|�W��U~�*;}lF�@(�.b>� S=fF��y]�DF`ψ�S��bX1���-A=#�F4f]�e4tl��:#�������#�Č0�t��>#���fF��/yF�7#*���gDG�eg�m���#����a��;k��(1n�^^�vP@܂~g��0b�5��;�
�����;��S﬇�6�kC_Fh��-�w��#��Yktng��hȚ�����a�s<�C0bP���֚5,4�7�w��n%�1|B�*A�|��u�K���T4�H?X�V�����.���?S��h'IɁ���u� l���Et���?�������HMYVq|~c��hw�S�U�y�3�l���T�t���}��k�5704�=����i����pQ���x�F�q$���c�t/���5,R)��!ƶ0\#-A��#�����q�� 8qM�������2\ӓq��d:�y\�װ�Ù��u�a�,(᚝�k-#����z�v%����=p���p�OƵurn=�}=�g��au�f�V��-��Y�O�3�p�7��G���Q>�ZNE�48������J���@�/�Y����BQY�JE�_�����.ޔ��`x<��rjy(W*��>���R����5����`���&QW����zw�����߄	���
��x�f{Kl"��Ut�[���ť|������-^%GW���M����0 2���Xb՛��3x�g1h�P��cl���$����;���pȲ?�� l�Q:J��;��׭CL�$�J��eFm҅���Fq���#v�Z���W�k=q��E�Ͼ���$�pI��U���'i�ޓ8E�n!X!���ד�UT����zln�Ӷ�-�2+:��)oI�,������^=��j��*�Ja��_%?d�S|�1�w��T�@�����\�ݵP�����(��9�kS�ңa�;��ł'3��vq؆I�3�f�ąx؂�N�]���d�0�z&}�L��� [�ܩ��+��x���Iż@t�Y�]��%
>@"����P%חZǅ���"5�(����R���y�ٲ��Uz�a'��p�������߆����y��hX���B��?S��.�� ޱ�p��Z&Ǥ�Q�~� }"��ˋKqK5){
��p����_���������{UR
է�B����]�x'/��!���P-&j%���}�"��F���ܵD�YM��>ȇ,o�f�xm�ۨ>@��s=�~3f�h8����CQ�DHY�x� ��b�jil&r�`�+�X�jc9���jQ�v[YI,����}Xk޸�y?yv����h�~Ce�e�򗣇���?Ļxs������&_����ԣ�{ὧ��z����M=#۴��q]M�·7ϟ-�h�2�)=WsL~�֯#�W~J�B�P�_�
�9�i�Et���Q3ksB��C��P��,��aɇ[��x<_�/L�$Z�&�d��]S�n��Y�N��cy�!����"p��MD�rH�n!H�b� ��K`N/����h�����A<��b�Ġ����P��QN���h�������x�0f}��=`ܵ��cVy�c-�����I����v�����?e���=��L�:��S�cL�� ��E�';9q��-�"sݎ�Z'%��Z�7?�
����������"<~s���EO���AI!������aqy�a���������^R�|������v�S|WJ�9�׈N�Y�sԯB���^�sV�޿�w_��x B=y:tE��`@p (��A�3���-��x8��&tGJi?�ѐ�6˅�饥aIz9;>e�+������"���Bk�����ų�ۗh�,�Gv�Jv�ڙ�5�'���U��(C�)�|-QU�����5̀5�E�g�Xrk���ޅʀ٦�ۀa�aI�Ny}8���)��~jٍ ?*��>�
F��ay���ހ�QFu�c-u�����ӷW*�O�S����zU��䬊������ӛ��]t�m�6��D����v�y<q����]��&����F�� ����
Ͳ's���P���ImyѾ>�$k�M�r�����}jA�eE(���#���ID+�-�|8�����uz�5���v{P?���c��:�؈���2�WL��f��9�B�8q���ሆT��4��0�|�׹��s8�v��{��0p�sщ��i���Ѱ˪�E�L޼&V�5�8(���Q5�oT��"�Z���6��<���+
fM����o
-{o6�ow&�I@�)6���H&J�0�����w�4vg�X5��-b��0�v��U��S�v�E�Ȓ�1e���¸�im���$�6k�k'p���b��3��(/la���*�7�=ZAU��N4D����~Y]�Ӏ�6T�fz�t�Q�	kN�@�#Ecl)\�^�p'�U��.�C���{d�6	JZ�ϯ���';�����iX���_����_�?�AIc�EZMh���A�T^�ë��AyV��Y��bCΈHhHC�(�� T�hfS��:�g�i�|����zu�����-�g$yޚ � 0N�?N��y@c��"�d��%0&� ����t�_�$�����=ߪ��M��H��zŋ�E?�@���� ��@pF���[�=m��h����a��hh�su|��ԅ��*=<�Pmɭ(��Y8&�jE{[8��V���T[8(o\�{���Y�XFnjV�ĭvFP��G]�<n�۩zPю��T.�2m%`GV��p%��l�iS�u��6OH����.b>�l*�'����,U��no����%{� ���� �5.oT wl�] ���X����Y����Y��g�ۋ�w�mR����V�i��!;l��]��v��m�oZM27�V���Pc~N�5��>Ԡ�9�mc�U�ǫ��s�h�g6�`�4�絽��i��j���W��*�����.Z��~]�BMO(jO��m|X�d0���Ut}ۯ�Uz�H�W�g Jf�	��l�/6^    ���.u��|x`���4_�P>ף����$VQʇ.(6xlv��a�a߮>J���ǻ8��B�c�O1�s�!1e&j33:�~o˥ߩlr�c����~�~�=��q61���v ��FFS7��ɲ�ɳ��X,#(@��PT\rfr�
�z��ۊ�Q�4�
hR��D�N'k�30���O�]e��g�@:]� �	�rD5Q�!�fp�{	0a@���3�-`�.I�՛�R|�nR�ם�I/���Fɸ���?�w�f������ϑg�l�@9DX�zov@ %BbP�U��(C�&�W��%�X��!:��L��d���ݤLȯ;偾�6LЪ'�K�I�������S�8y�G4bH"Ip�����*����Jl�9	8��XGͳ���Mد�M�
�ם�?����Z9�q�K�G���c�^~-���2P�'U�#̓� ��3�[X�jd�	���rz����ʯ��� �/9ż��6��j+пS�?>~�6��3���)����CB&��:Q�h�s��p��6⽣�Zƻ��r��� k͝_k6�#��6@ת,���f��ow򙀜� �e&����X�6���?S���� rKH�;��e��n� }�N�w|z�YP�\\�kM�#��o�Oɮ�M��[�=�g�"g�%�|��>��P��a<D��w�v�1_��2�.���%�*0�F�m}��	��ܐ���fZ����	o��TFw9����l�{Gm�8���c�G7�'/�eg�C��� _K��$1��v��h��?�˗ �#Jx��:��
U� T��#�D�{��2j��w�+o��,'m��&����3������y! ����%�^o�Tl�8��?{��嶍�{��y��)���ZǱ=�'�J^W�sznj�e�ָRr��N�?�EIR"i�g�U*�&���`?�[�&�t����(/r�i�?��S�����7��������S�H� 0���`j�AuűG�{7���V���H��$�U�3��I��L$�l����0�p��^j���U
��)�z���?���F5M���rq@+�>-S�wG?Q������2{��S*�>��>f\%1�h�"�ʾ�ի���x������PXܣ(�E9�����/M�"xx���-N�]�B�&��ٯ >�Ġ���]���r�������pM�7WI�iy6��k`��ݺ' �Զ/_ ��*���㍓vZxQYMQf5�@���~#��*����F?Hb�o�fo�m���㵼B�}_3{�'<�Aw~�A]j+��d�X}g�@�0Zt���v�G�/@��R�D�&UԨ �{���[�"�~���dG�}x[�F"_ݫ���Jo>�8u�C�&�ׇ��'�k���#���ٛ�ٛ#�&����'1h���
�ѸX�F��P�S�0�;���t@4�j�(�3�7��{Od�O�����Կ������S���t)$�b�(�z�*�)2�f�����x�x|��-O�V�|�=��NP0���I��pȁQ�,Iږ}�B�K<�F� Zh�Nzq�c>t==���)/6�x�e2+Y���rE�m/%��(���i� �ZΦ�)����i-�kY���G�$jy�Z��R��s���xҙ�h'�Z|��^'��}:,����JN7����a{l����&V1�^f�0�4m��L��s��Y�W �E �ō�X]	'@�t�����:�m�ܗ.w?�{.��+�[�P�������ۛ�]���ѵ�2�7�����|�_���nM7��mo������ȠR0�b��|�{.��7*)�׻
�(��!��%h�O�����~��R|[�u��:����N�w�iO|k�Ks�0l�f\�G�V`�~a������q��˯qcT���嫥{tj	V4Z��ԝ#`���^��pB��֥�__�[�T��F���
��ﶏ��۔~yu��� "��\CI���¢<�ڢ|r!�TKh+��)�*��'��SDyNP��Eǒ�g�GM��E�Lɳ�t��Y���;+f�����R�͊&��BGm�Ld 7�����;�[D=DA�	�V|�˻��=|��U���̻>=ȇ�V�@������>�����O�?t|�g�P*3i�{��Q���YVW*���O������t3��5= �g����f�|[���WQ7�M!�f|I}�w�����ۻ��)�w)�]^M���/�j�o���2o7�_<_�G�˫S�{u���/�ܿ=?o�N%�W���ջ�Q�~��X=~ܮ��aW�N_��nu���������o�=�=��*C�i
��m�7���6�=�.c(%m�4!0��'�WM������4=�.�T�k8�}��A�<��;�P�?EBj����r �HH7׾�ۮ~��Q��Fjm��p�|�(�u
�=��������R�?�i;هҼ^r�}�@�[��$C���	y= �����H[ߵ�L�O�����O��m���4���^��t�ݾ��ӑ����?�r�QQ�SpqL���34X�ڋ�qp>�Kkg�<����&#.*�`\n�O���r�ɋ��J?Z` -W.WL]�Ӣ���L
f�Uiv�o�)V�r䏩��H�aN`1,?�/9�sE��:Yf��,���e������ ��-�h�y/O��7�~O�U��i!w�c�8�B.X�J.���+Zs=I�+l��%�)�/�!�0^�/�E�[d*���-�+ W�UC@�~^
�8O��c�o�T��~�2!���L���>_��>��ckOuoO�=�~w�o���;r�R�i�o�X�������47[��;'��p`-�MqkpZ ��X0�aN~��2sK����ݰ;�;[�K)�I���L�i��8[�߆*�����4O�J)W�&��������"����O7%?{:>v²#_/���������Cj=<��T�J��%���'q���	�N�0���	PՄamӂ���6��j@�3�(LU�[Vn�l\A��)��,�-�Ҝ�5��lr��W�>��>��=׼��ea$C}��\'�1r:9�hmm������H"Gh'���/�p�||Z�;����E!()<]�a7�8�Ii�$��;���M�PYR��Xf�Ȉ�l�kf�W�L��ò�!x����ݺ�w_���"�~s��[�HLf�O�P��*�Tf�?�9����D�7���Y?�',g��#@��?/����~����~?���~�%�<o�Y�lB�S���9�1:ΌM�&=���ƹF6OaM���fG�t��z�	T�nw�A��6j��(P��@��FToz��l����z�����*]��ܞ�[����r  k���.øu%�@�{\
)ĩ�OG��!p歒K8]��Y�z�j�\���F�Y%���z�97����6��g_J�i!<U��,�'����N��viu��3;��V9��Q&����eC�b����<�8�����>4?��x�"�>��)����X�w���I�<I�j��\�`xݹG�
R��Y׀����ԯ��t�פNM���T���Ԗ���y{#G��k}�+��BP�Պ!\�!�j�[b�0���������Ob:{e� ��fY�?{G�Y����]�?��2T>(HZ��tf�c%����X	�KL9C2��s��M�� �j[M����/#��ԓϭ$*d-$:d�#�3`�KLCC/���Э�*W�vJcĜ;�_|B���5��t+����+2�@eg&:|���Դ�g���6���d�Ď�='ɚ=YLR#wsՙ�ԭ)�v�,����!�j�d�%]�
��J�z���<udj�L�(q�|�R�%��rո�$}e�D�A3Q���1�,��J6KA�f��9�U�7#e�CMS߳ç�z4#�bg]�ʚ��BN��}�eT�s����%t����m'�wJk;!�H��(�78��-�l��iTp�u��,��������na߅�ax�^G~a��I�)�-�{�J���6f!e�B�Ym��~���ՂxDs�&޾)%�m�pL#fMAI	B�M�O������    ��:KjM&5.��21,ԟ��r�����=�B���b5/��$�DRmֽ�`�E�r1
Jxŝ聗�O��ƕ�x�.)oh��)�s�S�Y�*]��~������a��8Wv;{�J���Q�D*wgS����%��ŕ��?���	5�K����]�>���{�g���u��w/~�}�&x���2�������JM�bu��U���3h*GN�X4�;�J��O7/��Ƒޯ��[E�O/~��9IE�"̭��9}��U�ݩ�<k��2�h�)1ӢU
����'1��pr���(xGR�����ñr��]�8�b��X;G;#�'�bŉ�X����^\�71	9g����)$t�@�"�[-.����0��R;�ݚ3��N+���Qۮ��N�t�E$y�o飳&yZ)S~��(k��D�D�T�=طX�y�=��)Wn+�牄M��9'~��Ea��O+Gʁ�۪�tg|"F�h�) ��A-Ԋ�2��h�:�}��� oj�an���6s]�����m2�jP�t7����	�Mu�6�FD@P.t�D�g����4R�~�귫X�hܔOu����T;���d$f����+�.]���Lc���{��fw�Y����ݭ^�N���a����������}�dN A6�����1�N�!���0#��.�bd��e��P��U��a]�V&}�mΣD����Qb+K"�{�:�0
����2'�`s`�b&ʲ@��y�|��:�#����g������4��u��;�۳��Qg��͚�4gE�mUظ�8T:�/�g���϶`Hvf���P͉^�����@���.�f��Ǹ�t^8��f7�P8�`���	:Уu�0�y�m)�K/��r���Ō �r"�fA�����q7�̇;Ȫ�B>H��AH&I�Wm��Sx�o�b���U�g ��YX|����C֙����a�C��xK���T(I���.wg��*ѐ�&��i����E�_�%���[ ��B\nX*i�f�`���Ic��0g�X*Oi�T8��D[���_֢�W�s/����������jOs`.~�ǯo���?��)�i��:��΀@Lִoc99��D��!-�Y�G��b���4������/Y�v�a[�Tv����uN��_�$ӽw�E'�m�Re����v��Ka����7��5w�:D��s�j��}�rQ+=��a�@�dR#{���`ry��8���
����>�n��e-�� ����Sq�_���L��E)�='z+�\��A9g4[d�����"�b�n�I�\�|A������w���R����k�H�K����¶b5@��]q�V b���]��"?�	�����`���R���[%��_��%�ս��5�Ѣ|�F��S�"*��~p�(�r�Ц#��f'���&'E����j�d�C׸޲� m*��nH�����,#����]B�{�����D5�+Gm���8϶ͳ#'<<�"`T�2,�zՆ뛷��٩N����淬�r]�긚��s���g�ʴu6��0���cq!?��Aᒮ���4�n�{���NBOQ6�F�ՠO�ͨ��9B���ֽ&���B��9��s(�й�J���m���0�&���hVT�����5V��6���/)�rQX�/!Oc���I��g���!�AH�1�R6i/%l{H�Y�C��\�mP�����l7Er��"5AIYe�L>�
�Ԩ�g������ۓm���M�K�C��ӳÝ�28E	cf$�rN`����P����c�����<n߇�5YZ�
�>i�?4!��Ե��͏;�:}X+s��C�l�w|X_�a��^
c{�����O.���e.Y�*���g6���&�H�ThP�( �6Ƈ���������	��������3}�}�Dܕ:���w7�����row�6o��/���7�6.�����+����K�Hh�D҆1��o�B�]���P���Q��͵����I	S&�8�" ��^� e�`�v/m���"�M���{m�V@�i�8�(�7Zi�D@�	� �G��c�|$���Y& �R�xO*�� Q�V7���" ��^j��<m): t�I�����G@�	��&鞾�
 �Mҕ�u�P "�H@��&�6�$]yO���$Kg&������X7��u鹷�֙�ȣ�'	��m�y՛h��K�y/-��{$a�\��28�$��6�}�r��u��Z�6�A�8Bԏ+���I�qR��zT��.��g��~��FD�BDd(�!�t��#8K��|�L����Z)�\ ���A�a����r/���%�O�RF
B\�� ��#��#А�G �i8D��\��"�)�ɖ��C-��d���LP�鵇��dCEe*�VS��K�:�:Ào<M#�S�4�m��n��'�5m�Y�׈͌��]C��~cMt��1�{���F!��Ы�H�����;���_�V =#�HΕ��[�`[
�Fnø�H��9H�y�����I2רZw��f1Y����( ?�D�t�9*�5k�Pkf9tG�w@#����PR�7�ZT�H0�1i��k�(�$�� � ���<v���4��8�fc�m������(�7�;)��]�R4�8�_�������L%4��Ak��������ݳ�U+*�_8+�wQ+W�J���Z�x� �+�fX� ��e& X`cл%N������Z��K�bCЯ�I�ޔD��X�P�Oh��@�#l^��q����< �����u},��R�`�g�Y��oƢy-�_ʚ�T����
e�6�N�Xj΁Xj���m��f='�#�e�nҧ��[�������_��aZ���0� 8��%��Y">\�vw.���q���@	������f��WT�@8['���n�iw� �cCGnw;�Ns��(��wA�L����#\+ו�����p��p=����~����70+ǖ�9��Ǻ���l]�*f�vK����6��@��J�*.��y���W���X�`1�E���:\��s^�R;n`U&,a3a�a��vgXIځ�m��fvN���F��`�	f��U������@��w��4F�UF*�h��8�Aw�Aw& ��mY�=n@V�.����{�: �5�P�9�k����^x�!�$I��.H{Y�wK�\�'��z���4<:`ˏ���zp���LA*�K&H���$@=�ư����y��%9��E�pF�Q����!�	��SO`��5�ܴpVҜ="��3��f_++W��{��@Ƒ����2h���w,���������a������9F�oU�ȯ��k~y�(a�Aq��]�x�Z�
�cQ��]���fp����*���|����ոk
���q�p1z��
j��u�K�3�><t{��F�}ԐN�VXA��3������jqsVV�������|bk��t���Y�g�TAmu�U��!}�!}�ԇ�t?�ش�ҙ��j?�?<l�wwO�F���9��҅��W���0�am��5�{���l�@�d����<h�����Qpܸj�����_z�N	��8 jsŭՎVrC��C�|�v�i��H�O��" רξ���,�6ڋ���M?"ճk��;Y"kܯ�pp�Y�k�η�/�_L�BT� ���	P�/`s~���8��8�2�V�A�0�����Y�(�N�2X������>���k���.��0:�� 0/�,��*�q�
0J�N'>l�R�'`�?��ȵ��u���g{=O��_ʩlN���W/���O!��I�.E�C���_d��α=�`R�>%�aY�%�a�֑����2l����h�<X����ɳŚ��VEg(�%��Y��hF��+���^���ѧ,;�f٩����V.O ('�|�u.��a��8���)���/ �4������w3����~��,��d�)��nځn>����[T�@m����m̚o���o�
�ב������#@IH&+�b��    �*�%�^�Nѵ��0==��J�[w�؜X���Ç]�~�U��S��V�;�<���� UM%'Z��]JM��)����tv�m�c�s�8\�5C�l�LT�(h��ŕ���*<$N�;VA_�S�/��Qb��*�\N��r�ى��ˌU������Z�{�i��CU��H��0�J�������c,�6�he��k���;��QkEd��=�N�V�EED�-��3g"���E
`��m6�
O1�-0�]�JeR���NCRW�B:DPSn(hsCeƵ�/&�U��G�����Bw��3i�˳q7��"T�'h3>���PC�($�-6Bwc�x4��O��x�����_L$k������}��'l�d1,�m)Z|�@�|O��{*Y��.��`�����Û��)����t� m��������gu3�g��qns"�h�*���|-!����VǰP��9�D:��6�H���.N���S ��@/(}m$CBY^�0�)�	�9L�qr��C��M�w���m'��vҊ^������(HYQ�͊R�,�G�P�B
��ץd�\I�+x��M��+��\yH���%`�1�u���*�n��G�Z)�$;Ĉ��}%��r�Y�����ǔ.����b�r� �{Ec*��%���@'oY�`��0��i�&�F=�,֬�,�fBܰlE<ekAV[KNg��-8�ub����x���*m��2�6Xă쳗U�7�7���~�v����Ǐ�����Aތ�+�]�tՏWx��=����~s��].���ׯ���H�ό5�,�5�4�@���3O��Y�Ӻ%8���#S�) 3ӃJ�8l�g��0A�L`.L� m�dd'?����������̈����~�����m�F��9��*A��c{5o�QD���IM}�K��xe�BVC�����/u 6|��@F�w}yZ�B���C.�BV���XTq
���.h-Sc�N�?�b"�D[F{7��5�&lȫ	[����.���9HJ�ӫ��,��6���Z(s����i�\Ř9ݘ��`���w��lM���oگ�(@��zPV�/d�~�x�fȳ���w�s��i�N�s{y��;[�ok5sK��ŗ}����)�����1�.;���rw�������B�d%K�Ճ�б2�a�����qs���W$zs���������L�ug���n@�˕����Q�e{�����A�|`eI�6K��k���s  Q>������62֨:�&$+[���r��|w�!��I��*�l�[�XXy��UwP.1"�n����*�p��88Wy1��cs��;@+����txc�^v��%��!�z�uw���u�͠�,z�f��A~%Ow���S���o�}綏x�A��b�Y��~}��wFq�~Q�~��3�5V�*l3WU���E����X����ᡫ�`e��6{�"�Fޢ��������n���i����-��~�^�Q�gh���m5�Fqc�\�[��xV�gxV&.l3q�P�!z�!z����v�����:��k�5V/l�x���u���pQќ�t��?r�"8�p/�W�^)��w��:�$4|+G�9ª �����=G�]'ڕ㌬{��Fe�1�6�Ɖ������tO�C�3��8mcm3��V���a���i%ݡ�%j?#Y��(���_��7W@��"�u@�&�>Fl���1H/:H�_�>(���cC�l�5�"8Q�1bs��X����n�v�TA��@ú��&�U�0������(�L/��r��%Z��،_5ch]th�0��DS?kW �#Pe�"6�֛��a�z����V����~]\�0Q���q�H�o�os@�!�]BY0��"�KEl^�
3��l����\c�l��Y��;O|���/�D�t=�*4O����LL�bmϙ�{����5%��FķU_�2J��4P�yQ&"b3e(�p4S�P��.�>{24@�����XƢ�4��gXz�	��L8=1͔�Գ�I�����x��gHm-L��%F�	c������	���oV�N���:"6?�:�"� �6~�W(`�E�3����SI~�k�d-�(��y��l�o�G��9C%ֵ��mNm��9����/(D�]��,إq�~]ePb���ʖEk��4�<n>ڜ%m�1����|�y�}�y|��Vb��A���`(?�I������,�#?�z��������X��z��l��̕�wB�����J�O!�6C�5?E�o�����߯������{/)�^f�FP��@�oޖo:�P��"I�K��Z0N� I-S#�	o� ry��Bk��S��&%r�H�/:']��(��7�q�%6�%���(����Ԃ����S([YQf(
]X���	�����J�� ��x6�l\��M���aH��(raE��̐ծkd�wRc]. Ƴec�5bxɈ���؅��6}�c�a<6!�֠�Uj�},6#�D�#$22mFh�B�i�8��=�OP�ZKR��R�E��(5/��ӸH7�E�dM]�����^s��q�0Gɩc��@�_{�􆩅��m�.�ݵ���kq�aD��S�ΎH��(M��B)[Þ��-�;���/�:����h�~Յ����5S�Z���RTl��S�h�������_;d��k��w$�wwO��ݟ�o��|�������h�/�l~�b6��2~�$w��W+��)B�N�
��1qDy(��d�nr�$�˔ń�+�T���{��N��/x���� ]d�܊�����J�˫�ǒ�l\���~��볗�V�ɻ��au�ݔ�f+J����$�48L<FQ��!����'�|���o��'%���'����B��}{H���C�� nZUx������o�?\��˵������vSHY�� U⿲U��b��C[���L�E��v������)*u�J��zȁR�CH5=�@�*�C�Z}�yؼ�Z��V�Y�@��a���jUvx�>�owwQ��U+A�x��P�*##�Z}�t��F�NV�`��A��:U	|F�u���x���?]��tJ�ЩթJ`�2����3�����1]fI�Y���>�
=��j�?-����䵼u�÷�ν�rtyM�'����qmr6��]�q���.8��]��F���)Y�䘘kl�Bjʇ;�fj��d*��x� �O�&:��Q�~�
z����������	$�h�J��`jw�`��!"�i'�k��1�F#��e���7_�aʎ���Nk*2t��/[���F��
��0`&������6��_~^�����La�T
�iaI+-��f���6��ѡ�F),p`IcȖ��u��b��u�z��"ĴC#̰�ų��`��P�Un�R�b��
ݨ`��� r=��k(�_�	5��Р���2�uy�97w��������1Q�y5ָ���a�G�>wЉh�}�`{4�W��mQ���+;��}�X�\%ӹ�{H�V�VgB�k��6����p��mh�U�n�m��VŎw��id�n,�F����.#��ܽ2��l��hȶ�ӐU&v�E��$�iCUN�6�U�I,���r�5N�WN����I��S9���o�)Lš碇��c�F�Α'�4�i7>c0�+52d0+ǟ�7��ʧŭ����w6�!�$\ �ĥc,�k�s��֨�m��Q�*n����ǫIz�����uPBu�3|��L��փ�A�[�(��Mr�ӫa3�0,�n�r� �F~K@~uHF��h%G��P=+����)�>�#�s��l��r�H�b�il+bdBښ)�QدI�&)��B�\���<}���B9�D�I;�1/"ϐ]H����0�ɯ�k�3�L���}�r�	[�D����w�?mWj}1}�@��^J|{�+����[�%�`͎p^=h����oPZw�R��a{���u�}�Arz�y�p�m;��2$h��xXI�F'�X�}#���w������w��N�*_m�?�|�.UU����g ����PXM�ʧZa��9�������Aw��/,    �΀���YxyM���+��\sN��^<ԐYy��cX�3�1d���8�W½H�sE*ҫ��F��x(�����������"���9x������v�*�Zӹ�;��~K��$Lo�6u���mI��2�妌D`�e�'~*Ӡ���q�x�,�5՗C\\R��1rI���@kk�P0������ ��)Ղ���D�F@V���@�����#Klu���"�Z�9Y�J����U�3
�����Y-��@�2@	��xL�����*�`F<�����������m���u����{�=Kվ�B�"6[�8�)hYG���ݍT�(ڃ�m�fYk�Y!1�W�&��_N\y��l&�=$���_�1�-5��Z/�@��s7��Cո�Tl�0F��Г�r�(��/4�����[�Dj�,��1���/T�g7�����.f�����:{�zFYM���IwsL�ƅ���J0`�W-��"͞�j�WlW��_9�ȫ"Ri�7�������6#�2������q4�*�]\y<��r_J0���
�xw#�k0HZ�$��j�B���Q�3E����JwQD�P� ؋'r�ܝRU����.4�N����B	+��f�����a!�sWtn��=<�s$����w/���N��:i�r`�Np:e}K{8[D�e�6elEO�"<�S�,ߟ�^�ӥjG'���^�h���&T!g�&]o��M�#n�g.�����H���ut�X��3 �AU�qM��ì�ф)�ln���?7~�����uG�S=�V��a2H���d���qt�T�MD���X�$Uɛ'�x����<�C�U��.,_{�ʚ����e+x��#/�Nƣ���7��ܭP��G9�q�~�!���>�
̡5��4O�Q���5��ҋM�А�	�<HL1�}��lH�T�ܮJ�i!!���3}�ӏ�E_-���w�)�(w���r(cm�����&,l�p�ךTc���w\�����~
L1�}�nH����0c�:����=_#�zE #����|�
}�7e6���������>?�҇q�qnם��v
��I󨡶AJ9�A���io\Q�X��p[!)P`��TP�H�.��{!�tό���!)Pf`3���w���ٛ_4C�g.���+��^G������X�U�:f0�al�@�B��R�'hK�`����ߺ�rw�\�/C�RV`����z����n� 3�T�M�@B�� m��Z?�攢'�b��#$)���<�ĉ���9`
�W.u:*Q�"�@98���� �.��F"\-��Q"�c�
(�L������H�N<ٝN18RA�ހv�F����058i��ߊ�
��5��Z3pAèvc��-�3��غ���	'е�Α�
�3t�j�S�������2e@�)�R\_h��4�`�H�w�}�~�=�������>ť��Ʊ�K�*:�:���B�^W�;k}�I��^���#����z��:E1�-0�] 3��t�ༀ�΋���1�xB庀]���qq�1lN�8'�T��e�P ����5'����*��^�(��������~��>R6�8����"��i�y�ٳ
#�v���CwS�^�~��r9���ȳ�#�C:�ڤ¬�TTakڨki��ز��5�tɏT����CC偂]�zЊ#�i����6�&��:K�zT�,�e�:3��xK�|�J俜�i���'�WcX�Dì� e�B]v,�P��ӎ�sa ̡Fy���@:���-YmY�MX=����X.�k+���Q(�yq'�9Ta�W���z�8���Kq��U�F���VF�^"����~~��aQ�����U�3��i��/�_��.�H�O�^��&��b��Vǐ�8v"�����q��1�q��|��.��5n��q�̺HI��`mk���L_۩���S�z5Zfz���;� �GCV?Z���f�mfBi`���aj T�n����Y-l:�7��P�P��,�?FT帰�#FT�-�r���׬�~�������_��V���<�@7��E��y2}��`����X��ͨ����>�j����90��"#ѓY^��9\����1ͥ`7�R��ЁVY��͊t�2��g�e��_��3_����P����E��g���}D$�WټB?~��|��׀�%�k�?�B'"k��#����G���gTM�To���~�
�2S�n�I��G��=�"��O�N�ټY���ݳ4h�9U��K�f^R��!��c)YþC�tŦ���g����T�G�����|�-�*;�ٙ���H��H;C�C���iJH��6a��������a��%�<�8�]r6��dL� �ւ�#5��C��}�LÐS�,�*��ʶ����r)a�K��YL�."e:-޲��d-�)NvC�gD��R�^�z�S~#l����e�ه8c=�m�Ǩ�-��E��M�y����q�
��U� �����M�mn"�gB�ܤE�EK?�а����b8DUV!l�
e��%���Q�@)�M)�RG��BXZ�|mp�M(*�*����40c]D�	�Y�K��ٰ+�~�a)��("�*#��~�><�����a�D��`-��ɚ�������+I��=�,E�[��o���^#��ٰ^?��E�f,j"S�KNyΈ�L'�M�f��(���* Ǚ��cm���\L���5A��&�w��ߨq��9�~3�0���h1XY���r�D7��E��y����GS��������Go?��oco�)De���`��^,�>+��A�c�oC��u�� ��JY(�����E:G1DN;D�4y�俺n�UW�|�����te���0AL����\�Lc�I��@�;��3@���=��/��dR>s�����q[�x����5�۵�V�s����E�f-�b��KH�΄π*���Wti@�S����M���.$x�5��V�k\���u�F�X����o�f��
�������*��F��5jb��Ӟr~�\����Y�&�a2��I��L�������R|N>B|F\��ÖB��O���LJ�.i�B�P:1:���_���+Q�_�	n�ʋ�ʳ$; ,S?�Ҵ�n�e�\L��b�y��=S9G�g�����*�A�,�:���ɷ ��=�Lc�S3X.`���Xtؐ��I�fORL�H��H;hCb�oo��Rk���wDm������Wϳ;��sD6?��dt�v�����NM���Ĭ;آ"�d�׫ZR��)x뷧 �q�F�L�:������P�愪������чPP�9����Ӓ�$�[�^%���$�ʠ�����C��K��\Zڃaw�zv/�w\���I>%��Ѷu�A@�}������ӷ����nt4�[IO��V��HAhәur(WA���ݟ��n
��{P��Jo&�*e)hpLVN,jsbU�+J ��~Do���`��@:[�����e��d���<V���؋檹s������5uY��殾��hw����y9�wDQ�^w����T�4�DL��MQ�mJ#1�K=/�0��P9�[�籍���Ɵ|^jD��#��RS��f���2h2�\R���Y��������s���<-��-%�o9����]�&q�{��5��m�A�rQz����LY���2e�8F�EG�Yb����z�M�3��r�b���aћ)/�{�Ry�Q2ۮ=#ΐVk�9$���8��e*��jܫ���QI���HFC�h1�bvו�7F�%G�y❥jU�6M����(N0�n/k֘���*�Õ��u;��=�q>�X��5�h��+�j��`��ol��~ƭ��Rh��B��0���9��ʩź�Z�c<_r<�#�.s��m�����FU��q`�V.,fsa��q���5N����I?�%�}������/ĺL���%*�u�˚����-S_@��t�H�ڸ�l1�gK5��ZB���͊ed���|�Uo&�L���פohrOc���@v��U��r�1��Nr`/u�=;��e�'J�آ��D��t�b\c����Ւ[C��)����N�G���    �`��V�J֬�8��`��e~ŷ�7KkVČP7��k�le�Z�lֲ�8�^İ{���3��X�y�h߶��]���q�%����\ϸ�xVe<�; �3��s�&�,�s��tp�G�6Pמ�Rx�kZ��s�C�6��1mhs���C�i7[Þ�nڷY� �sk��W�+�Aj�]�j�]�ڮypI�g�f8+1�#�%��gī�(�d:��Q�2
�~���:�z���q�o����o������Qw�Q3۰�<�&��ᒾck�G���+�� �o�E�o�Eׯ��9��f�����mf�j���Ηg��Ȏ����t� �͋)�ŕ�����~�?<F�g���c�Ԑ�~��!)��^��?|r�f�Y���(�����v�x�\������ ��.6M�1�!O��C���2(�x�g�c]�Cm�ܯ���?*���
p��-�-�.���E�m.�*�q����\H s(@w�΢ܯY��H���U��+�%�Y,�qYi���/B׬�#-��~�JCg������,�u��hSіť�Hl���5�m��*�1R/:Rϒq��Y�����j��W�Kns^j�8��{�|������P���q���L�����ֳ�|��ۢ�A��u"_WR>5ր�]B�%��.Y3F�%G癐[&��Ѹ-���߲�.���Pv*a�S�]��E�<O�F(�^v�Q��Ӯ��f��e{|������zgӖ=�.�����"�v�^~��՗���Z�X��܆���B��U��J��I����ސ�q�rY�sP��H ��Ī�����5�P9�`X.�YC����w����!ֽZ �r���0v����m�k�Ugm���_�+Rv>;]��֯�,C�K�ra��A`�r.z�9]D]�I�1�W�����F!l6���8O�}��&L��}H���D��y�5j� �W~ʜ8=���/N�=�-�*ׄ��&j�Ƹ��:C�C�_%�)1m���
!�V�u\G�}$��/�Ж�5� �X���A�o�´~��>��b-K
D�ʙ�kk� �p�J���h*��ȵ֝P䖻+Wjwexv�]������w���hx�ӧR���%�"*�]�
-�>�b�+,�)����:V�П�����^�[I�)��16��΀X;1�+ �&Y��۩nO4@�z�����n��CG�(��p4�br�4�\d�4a׭e-H�mlH�.ʀn��
+��������&r�p���uW0��{�C
q�ҋ0�3�RQ�X-17�����u���C�?��2�ć�CT�dm���տ��ב���Ե� �g��YRv����ߦ�s���*BO�Rȩ$�%"@�L���ᬐ?M��)��%����B�OC��\����?��_���.(*�^�t��jlsp�~տH��K�} U?P��Ik?�B�<�����>��I��{U���_�{�Ӽ7N{��~(.���yo���i/p���8�]��;Mǒ��{����yo��.S��R_>���
�k�h���L�_l�+��߫�jU�P⡵���?��_���KM~a��e+����J�8������B, e�ֶ�J�$������`�� �+O7���T�Q�K�?����`��j�S��J�B��/�y�e��Rs_��y_���)�b�w����j0����  �U�:%~A��.R��bS���/��B���e���V��R�Lj_J?�T�~��}��m�f)�����CN���x'�#Υ��Q�mҡ4�a��o~���kоg�)hB��uW���2���&�`�{���&���[b����,g��!�F����} *�m��?�����P�]*�$kܯ�={��z���J�@�:s�Ψ�7��W���Y�B��M
��p��[C[��o�a�|x[����=kX!~It�j�����\�
�q�E*Ꭼ��2"�I�;�j=Y��u�rd�W��dO�FK�T
���#k9C�����~ e��M/덥��,z���]���i�h�u�.ޓG�Z�7��lȥB�^(��Ų9D���)����U�t)�r�\w�+R��R5t)!H!�.c��7Hu;�B��1N�S�T3_8,������>K���������o�,4l� � U�ILk�X@E^�$ϲ��>���@��)�"f�,���	B���O��0r��O7����p݋��y���`�����n�([
bv`� ���3݅FO�yݘRN�[��^T�L͌�K/��M^ t�BYH��SiX ^�s�v\daω&�|��������"R�cj����>H�����?o�n?dk����?��O���<]�IL�&�
Q8�BB=@���X$p� �Tp�TT��|�O8��A�ƓQ�*����Y�
n�
���/V��oT�W�0
X�'p}GjS��RQ������[M�u6�V������)�f1�(��b�2p�f�z�����;��n
�Y#
x��T�^緾0a�Z���]�M7ZDO]��V���֫U���q}gcS�͒Q�S���M��J��z&�L:W��"���ȥL��]!�Z&���qb����"	^vY� j3)7����fű�nq#W��z��|�����vv����1�fc]��!�"B�Q���Y�H������>��uî��O�Ŝ�iM[=
����}W�|>%�A�P�w�>���"s��`ԪښE�[��gmg���ĵ<q�bS�����Y���f� *aH���t"~3�o�D��Ƭ�w����R��-��P'�w����"�}����������-�ڣ�MDh�Mv�f��H;GZ�R`Җ�Q�&�5s�.������cI+*�L���d"��b��I� ����M�ʕ�{��v��7lv�,��~����J+���i�1%�;�Cq�A���sV�JK�/�1d�]�T��i[�����������;C�ب�>����߼����a����.�7��h-�718�<1����ɥ�48���M)S���Ԑ��25���Ç�f�gbn�S�aY�+���,���� �sdzj�y�gwZ-�"��H�d�����r��X���*-m/�	��O�,�>l�W?�Ih�B�{��˧���V>��r�~0�q��������Ҽ�'q�'�)���?k�K�҈k�(������/C=˰6.�L$֯�b���̧Z2�^�H�-��7�7��^��sh�|w�{�=���j���r��������#�2���>��_6�Ύ;oMc@���O�=�0��3��-�ZA�݃���z�����}�0.���h`m��'z{��}�J��2���������0^����엊��{�8{�o
.�E~ә ;��r�ـ��
�r[�<dg�τ=*��xP�tJ�y��������"kQYUqp_��?�A�_��u�W��(f���h��!Oe�)k������- ]j�*�x��U�E����D��� rx�����٨�7���U��ﶇߞ�o�	�$���AJ����ٛ����o�Ҳ2����R�x-��C��WM�Ox۪��*m~�Q���.A�M�A����S:�1���2+s�߽x�/�<�X4�Z���GSovtC���!ߜB������I�q�v���]�,DH���eY�yn׮.�B�*Dq���W���ˆᠲ*��
z<����Jf���g��Ll�B�~���:�� `�K%EY�		��y>�%Rx�%R�꟝c�R�׳�y�ͫ@�5�W����≯lDR�fū<2�Ί�Q�sR�-36��=Sƭ���)^e�rV<�����w��x4���p�W)a�]/'��T�����t�X�"���&��_�zY�ۥ�>�,��,���/2�4��2�o�PӹJ�f�Iס|��u~��g���s�0e�ސ����)���vϼ����Y�*gʚ����Q��EF�yR�Ѻ��U���^{�܇�q���j]f�^ƛD�U����v��9~�����/0��C�b}��Fѫ\+oۅ�>������/0��C'_]�Fѫt+    ��D�5��̂�K�����X�Ѿ� �~�e������fwxHmf�!X�,H�*�^9R��x�6{���3ty��'qƭ����	�d:���5 PPf�@;��ˍFH����m^|�F�*5����s�Zz��65��7�_ם��ƀOzP��������C���(!�%J�P&� ��7��o0�S'�8��Ĥ���Mv2�d+/�e�8����j�=<ޗboʣE�*����O��O��������~w<�t�\c�'�!S�GK&�#n+Gd�:!�����m��"�D��s�I�f�4$�I�$����?��%��H��6�nWyW�L�Ԯ��ED8��W�"$)��ؐ�-��u��?O��J���UN��9�_�������?�[���|\=��~��>]ʿ_}���������y{��u�}�:�Ʈ�m����g��Ǐ�U1X=��JI�)5�����;nO����*?�&���s���S���-o�|����,@	��(?	/$�oQ~I�[��>G�c�I��l����~WBИ9$���	��k�!�^��*��˜�W��ZW��n�0��9�E��J�ov��G����8l>��>no_?�{�X��w��q+�?��Rl-�pr$��B��aI��'<al� �F�1"�`���o�:`����a\c�n�0�v��fB���p~�'uo�-�pE���2���*!�ױ����C�C�w�� ���ZS�f�Mu��=�}:U�
�y,�/V��hPwu�;�B�ӋA�� ����6�*N�s/W�i.�u�6�}~'��V�c!x�f�c�1h�Z^�xx���1|<<�>K�c�X 삀�A��RFD��0�v���cYl\f��>6'�����ji�$�^� ��i�V�thHT�O�i�l�k��:��2.���TW���I�:wI�	d9�)�^�������A�J
���������J~�4��9�`)t�I�]䍍s�u�J���G��@�@A���-Ը��¤P5���-|����j��My6��H�g����!�29\���$m-Ч���k�Hm I|x�?�����-`��$u���Rh�o��~특�ET��A���������f�H�4($I7��vB��݁Y�������{{]�&����T�-�7�Do�[�C���hn�m�"�s�������9w \��
��m{cۉ��C���S��*wXJ`��s0�W=
�š��C��웒b�jM3� �xЧ6H&6LZ���V�'P��c�l�:Z�"ˁ=(E���~��� �T1�O��<���z���l�&���͠	XW��u�H�fr�	�2x������n$����V�(%�7*����!4nW1ahܔ�:u�}��� �.'�0;o�B7��v�c��?�*�B���C+��	?a�rz`K�X���NP{*]*ɳu4\k�?�wAQ��LF�g�w���|�^�W�?{{�u��jì�w$wwO��ݟ2}8�Sn������c�	4�O"��D�=?>
F�S��Z寮��A��X7���)�u��z��Wd�"?�I�\���ۮ8T�����_^�t��70�G�>/��*J~�����H��(�^���{xZsr��M�aw��C� Q:���ġ�0.D�*P@j;Q��{w�ڱ����/�Uh�;Sbg�ة��N[�Nb�כ��SU�\�4�Uo�;I̒�����\ި�5e��C��^��<oo��H�+	s��k��(�)I�r�fwSPأ�.a�$\��Z������̓^�� ���~��%��ӭ��m����C����sE���
&�:���c��Ĕ����'�\��,
��Q�-4}���=���s/��W���1�$6ǫO��L�P��W;�,���6��-��8l����O��G�����\86ǚ� ��W򓘎���@Q�r��_�&�> ԗN���S*�1�\�f1s�O��x���ɥa�<�ln~_���EŬ���'f�<m1[�o�oS3	T3h�x�$g���h?9�(�i��:g��ș���qo9��:�l�ft�}�=�q =]�Zv�M֡�N[l9�Z��!�궧uT�DT�%��<t����jY	O]���i��:�Yu-t-BG!Lӵ�k�����S� ����w���+'��F�ޙ)�-m���|�"m'�Ӟ8�ڝ4@� t(�W餽u��a�kuu��5���U"�$;uͣ�����M)�Z�qKN1b�<n�=����F�?��������nm�B�[ŵ�.��b��ݠ8�(h���1���Bլ��h������V9F\�o~y����t'�۟E�bk���X�}������VҪ�������bC�Ԟ�Ą��`�j<X��bu9�TQ��6=�
ǔ�5�-��qp2��������ey�y���L��X%,1me#�1[2К
[
�!���UF0^Sa
5F jA$4�ٸ,��5X�3�`(��Ŭ���|i!k.����
�@�M;��x��1,�goD&�5d��tdN�a���� ��oż���DMdfv��ԏ�^^���.�s���<�Wi�$8�]�Ά�Ev���ә$şBT�����c�dv��$�#�g�x��5�]�0��Yb�+!��ح_�N,��O� ';'^����c�i�!-0޷u�0҂��N�@>�M Z���i!����ui�`�ђ����tN��$31������7��Y�����B����T��J�~I'�W��.SkVk}��ڋ}�����,���;ݑ������ҵ��/k^�/?�/V�����u�2������ū�>��~� {�?oo����� c_��$.��J�H�@�Jg��IW�{U�����9�b�:w��� l�
E��%X3���Jc�2��|�������g��p&#��<�q�4)+� HGNG�1�sl<L�I	Ҵ�LچeF��*(�걸 /�,���}aT�Y��
 B�Ym����V��6���iv�z.�����;\}�~����������m-�����#�0��e��n>ܦ�+x31�ғ��\�

�O��K����D��G�տ��V˘�|�����+_��H�ʛ\�rz���E��O�&)����������{%|�{�VD�B���I⪶	bZm���Jį��w� �8j5�>5�.&����HeM�gK���	
x�5��]�<�{�ⶦG��|\7��N�.n�=kq��
lc��sҫ�[�[��E�����D�rWEe��+y��v,/�bk�KQBp�zk��3Dh.������:�Rsã���c�z����(J�q�q��
]�&\l骘�f3H^$�4}UH�ͫ�R�	H�m�?ɯ(�6XJ�8D�^�q��Qj����"O�;�"gH�5 ��\����ƒ��O..xy��V@�S����~^K�R�G/�I����2)�5̕�y��i��45l��ӭa��="	�%�5l��cհP�fQÓ�p`�b��`�P�p1�aP�ꥯ�4̣���a�a�al��u��J������?��Mm%<!	���\֡9�-`���m[ʈB���|E,�/�5wC��?�"k��P�2�=<�Woww{}�&��xu���=}�6{��������Vʚ�|�{B�X���Tp�Fj�6�����o��Uj�S]~��'1�_Y7����,�������������sSf���<B+���������X+z�4)n���S�M<�����v�6�c�wl�F�=\���t���%:��u}˻ɓ�a������@�j� -q@+�ӧ�wz
���:U	�
���*����T��8B�Z � 	�AЍ �DPW�(� h%yu��N��	 l"G�fAr#;��&Y	�^!� ��m�`��"��"��Y��"Nuu"&[	r7�a� �Dl�`��"�����YD��Nu��&�X	roݬDt��N�DB	*�2Iٮ8�=;�=��V?��}��
��`E��Q"��Q"T� j.�Z��R4    �N�8?	/RN��o�Hֵ���[F�Tt��������d^�S)Y��w0�,���^�{=�qz����>�J?����iŽ�`�b0�E0�n��96v0��`���\TL�h�pJ��2_A<4��A܉ >6A�J�{�u� ��u��� L���ie�4�D$hq7��Abl��� �E�	:A�F%HZa�� �D�fA�p"�$.��]ġ	AZհ>	���u��F�%��Q-Gq��^𔠿���6����*��G����[s�,��w�>5>G�}jt>��$. r(N��C50Ե��������Z�^5����V �Ԛ��\��9ٲ@&o3jHFE�������n(��J4��n��}�|��=6w�5��m��>��?|�@��)�O"Rҟ��X8%&0�i�����۴�$s�C[�0�޴l�OKⱳ��#�2�ID~z�ü�b���~1�Qa�������W��_^���ի����}̦x��������t�z���'���ۍ]S
�<��[�;5�*2#y�%a���匶	�F�ïﶦ���f���1*��y�+�O�c'�H�]i�?yaC���������a�~�z�x�9�i�Ħ���Q〄�NP:�X��ݮi�~;A*�D�Ȅ�����25�e���s9l�ڍ�������9yk[���M��
Qp���&F\�$\�y9`�a#�뇍T-!���� �q�������Q6^����kZK"�������}��@��$.Q�Q��X  ��o<0t�1��Q�W/�N��
�E*C���@�Z���+v���75ᴋ�S��l���E��ھ{ՙ�����@x������We�[����YQ�F�z��]deA�@[ٳQYq�/���YQ� ��`�ydeI��K���nc����0�EV^DV�Ċ��ۨ��g��X��cE�jZ�������q���~�F����״d7��zJ��B�Y������u�L�v�`./:4m�)��4�r�k��θv�����;�5o��������&��#��D�%��-+�7� �q�j!�q�EsU�]�u>��JOǫ_����JZߊj�������a��W�;�=}��%��M�C���Z�� ȫ�Ha�D��������K� XWM�3�~1A軟ɐ�V
k*��ӻ�n�׽�5���D�N�����T��޳�����˚+�6.H���V���q��镪[��__�����O������T$�~_�+.�Ǣ g�p�'MK�P�,��J [�<��jũnB���k(��D�1�E�k�zp�X�ldxz�����\��������z�ĩB��ߑ�O^ĕ>y�>i���Y�ҞO���HM���>��g�r���W�f3��>�WE�wP��]f�K.����Vx�x��]^�	����M�~�6��Q������>(�q߭H���B8Q�#�"�9S8�ɽ��F��a�(*��^�PA#���9=j��PAG�(*�<R1*���S�fvm�:0jőP*`��=ЖO:��r�2�
�ZI�q�� *.<�&�f����g�D�A�5(g���³m��l�<0j�8�A�8�^ ��m��A��g�T�AQ�5(g���³m�G�mS�E[֠T�f�n"�'��yyh�����'-;�V9������a��q�������n�ׄ�Å���Q��I��>�+�C��M��~�@�35ta����ǧ�.q�Z�_*qg?�~��=<������Sq.�̌n	���Wj~�Q������P���Dv��f}r5��ڈ���ϮE�1���,���'��&} �e �ͩ����ןp�+�{��F��9V4�s5���.q%>s��?ql�8
�8��x��g�^�{��?���_��B?l�����a{�������~�ӛ��p���?������\�����.�,��x�ӽ��!���5��\%��%k��\�.^Ӡ%�@���$�#|�ݺ9�j�$��]S@���{ ?�R+apN$����CB"$��6�����B��}��CBKH�;$4B�H��ì��HB�ߦ��
::$����C�"$�D�B�B a��6:$����C�#$ˀĺ�j���@�!�D����(!�2 !�w����w16$ Q����DJB���$��$}�^�ʈ���Ѓ9Y'�{�@' ���ދS�Xr{p#'��{�`'0�}_�ʈ���ԃ9Y'�{
P'(����S��2�zd�AL�/��=�!�w���4���e�H����_
'����<M���<~�<(s�G�$�B8����,<��<~�4<(��G�<�R8�Ǉ$�Ah"^T��g�A��=2� ���	H�'�!�x���'��2z:��x�#b>~)� ��|HF�f��뤌���eN���Ø�_)ޓy����Iyy�&���Rf�a��<�Y������0$-C�� ��y8z^�yy�#/c^~1�xO�aHb�&��뤌���ef���Ø�_
)�{FCR�045�>�����a���=r�0��B
���Ð�<M���I=;��<쑝�1;�R�g�!�y���'��2z~��y�#?c~~)��}H�>�M�<q���3�����z3�!�F����)zy�:)���a���=r�0��B
��ч��ap��Vf����a���=r�0��B
�ч��ap��Uf����Q��G=r�(��C������Qp���3z4z��9z�#G�b�~!�\����G�I��+�g�Q��G=��(f�Ê� ���Qh���:C���i�}�n�G|������a+�����#3�`ƿ@w /t��ܣ�R��[��DVɊ�� V�-�=6+e��e ide�����ae�jݣ�R� �[�EVɊw*2��A�v��J���nYHYY"+�ŻCX�v�謔yHꖇ��%��_�;��AKx��
+3��-	��"a���Z�{tX�d$sKFaY",���C`���谔�H斍0²HX.1�g����r�0s�6P�e���W��eкޣ�R��[����"a�/�ˠŽG��L�3��=���e�r�	���G����3��=���E��_�;�A�|�K��gn�{��˄�"�Ak}�K��gn�{���%��w-���2���R� �𗉋��\���=6.���s�,>�Y���r�Y>���踔y|�Ǉ1��L\�+���2l���q)3��-�c&��\b�χ->:.e.����a��/�Z�!�[	|t\�l>w��Ø�_&.��Cp��踔�|�χ1��P\.2��&�踔}�ч1��L\�K���2la��q)s��-�cN��\d�?lu��q)���-�cV���	�e���Rf��[VƬ�2q�/T�˰u���E�Y}��G1��P\.1���2�/ܲ�(f��KH��^�>:0e^_���Q��/�K����e�G �{I_�<{�{x�y�����7yI}r]���^Q�~.�x~�9|ڮ ��꫷�n�.�kp��1%F0@�Ȥ�����tk	�d-���]*F��e��钿VCU�O�R����M������TZTJK�R�JiT�4Uj-<�Ji�J��JY�RfU)�*��Jm�qUʂU��T�K�r�JyT�4Uj-�;�Jy�J��J!V*M_*��zA���7�2�b�%�闥@���]�����v�~����}�y|�MN���JݖG��嗱�ܯn>������MN�8hVo�Z���^8-��w�"_�$�A&KE��K�O�1o��no���Y�j5���٩ٺ��,j�j��LT'}٪f�D5�Oͣ/&t��$�j&I?5�R���f�<;5[�B�E� X͠��a�fhQ3�j���G_��R3V3�fT�YԌ��g�f�F³���S3.Ռ-j�QͳS�u��YԌ�Ռ����j&5����������2!��LK5S��iT���l�%w5g�	��fV��Y�̢�����3�i��>j.s�Ē$18?5[���E���@�+���6�f�9�d�9vRsz�yԌ��f415_:��Ν�FefU3�5    5���٩�ҙmt��6*3ۨ�ٮ���َj���/���Ν�FefU3�55���٩�ҙmt��6*3ۨ�ٮ�F5�O�^�@��l�2����횚QT���|��6:wf��mT�l�Ԍ��g��Kg�ѹ3ۨ�l�jf��f�<?5_|x��6*3ۨ�ٮ��F5�N͗�l�sg�Q��F��vM�,�y~j��,�̙mTf���I��O͗�l�sg�qY��UZv����ٻ��Z�!��w���[��T2Kt%�~x�
q�_Ĺ�/3��M7R�x
����Ŋ��!����ۤ�J��.��(�	K�R[�[lR�Ty�Ty��t�z��-xȲ-6��R��K�"Ju�R%�/��J5�󃄃T�r��/�R�I�ꄥz��R8����A��|�����w����|��!��G�NU�{���<UI9V%�X��������j��R����׾��+@��I	���"\2�i	�b#W2�ȵV6� �6Y�R��*ke=#Y_�yL���ʚ��x�֌篻���������I��Ӈ��q[��#��g�䳟�P����h#^�B�ڕXDBA���G�;?wN�5����QX�om� ���,�	�����U����%�q��-��2!;��e�_�#�Ͽ}{��Pbܰ�4|�4x� �����z�'�s�,��K5�9l��Q�7�('�m9��~mVɧ0����\�?��g�9v�ú{�}�)�2�/K��Iy��2��fhZ����h�a/0ְ�(af�v����rŴ�/,\���axi-�|�Ie��w�GB	�k!#8K=�fA�R��.h=iA_�],���,hZ
��M���,��@]��&h��'��eUд�	M낦��m�BKH0���~:������DG�{��m�9L���Q��텟��v|�Ȗ��evٲ(������9R���t��(	�k�pe;Q�^��n*��tӕ�P9,]Â(ԩ
�R{4Rќ�����ʁ��D�NV�ڡ���,=u��BM_B�n���n���7�6��M�4�~������z��|����}�u����J��on�_�:�n{<n漏18)�!�ր�
�J&���X��#M�cP��$t�ƀ�������O�KӅ�o��O��!U��uh�٤�D�V�e�*���S�Y�$i��t~Y�7?�,\�΄�.L����m�*T|zY���7ץ;�d�)N��;�6ї.G��f�rą|͒�d�U�"Jv���p��T7���J��C�:h�%I��4%{����M�P$O/K��m��r�x�'�{�?�~�W���ǚO��	M�ٻ�ٻ��
�<kAR���n��@~\���`
�;��Zw\Qإ{b�=���A�:�K�eR����gA��On���H:��ӽERm�"�Q�s��>"4e� ZF/��.��X"T��[��d����"o� �5n��q�
����l	��L����p��_yE�)-��j�t<^�px��=d�0�Ud�.��޼��`���)l��^�l�]�� �UF�j������#�s�8�Z��7y���K%�J�Q�U2�ދ"�x��q�����8�>J&��I%���*�69�+��(��*��J&��LK%�J�Q�U�����J�!J��JHW2��dV*��P2�J���m	y��Y��Y����d�_ɼT2�d�<Q%�3�v)�)�@)�׵��kY�Z=�,����ek�Ӯe�e�eP����Z�*��t�2L��'�e�iL��`-�J%��Z��A-���j��jծe�e�e����s�eXj��2�Z�����~�hkY����G�e������훬��mV�ZI���t@������R��M��߬y�<Q)�'�tLM[�q��&nIk)b���*b��u���X�q��&n��T�,�x�"�^�����".S��-U-E,P�TE쟩�y��".���-K��XDOV��+!"4E�S�(A����������H�u��R����a�y�yP-�����Ō�P� M���P��T0��Pg�eIH� n
��I\|��6�C��A��P�'��"�1���ձ�"D�ú'z똖�	��8�8.ALXǗX���:'���MP7�D�cW!��c�D���uM��q陠n�����BĄu|��:�c����3u�1�y�ձ�_"D�ú%z똕:fn:躭>c��}���k���	�� 8�yr���]�?�J���]�۶�����܌��b���/'��Olg\9_�Zt�\ָ\�N&���$A�I�T��k��R9���~76��O p��cd1ĸ�*)D�J
�γ�y��
1nM���
Ѭ����<p#�!Ƭ���y��E3�ɀ�,p��#{�<l���F* =�G1���f�3[63�q��	�cărdW[��-������(���ޖ`o�f�6�� =FL(G��%����?��?8�G1�帆7���y���.����ų�O��.��8���?'_>�����e�������*yZ�N�X�?��p�<}x��'2V&��ߣ�B	��R��b�w.��R��?���������������f�������d{���h��W�K�Ǫ"I�?��W��E��j��$f�����VD�t�MJ��i��7G!��;s�~Q�Iz*�^|���c��_̭1_���p��.C��ȅ�ۇ�JjM闩�[L^���"S�˟���2}s��?O�����Ō�j�W� �?�맍Fq�|��~���&sK��J��G�a�㟂V6w�_ɓ���������!�jx\\�n�wZD����~U�P���k�-���Ɯ�J�����Le6�!%�B,�a���D@!����Q�#�����1Ō?�c���S�����;^���Rz���^��Î9J��*�t_���B禤��NG!���� 	b�_^�
**��,�<w�M{U�Z�I8WA��*l�6���3��;
+� �oyx��(,;�/�IL�_$k����k�x��H\9k<l�"ֵ=@ꄘ1Pv򞅉*�% /k��o峤�Y�?,�ϛG�3�p<�4�G�Q�rs���a�NG���S�FL��
��6!�(��ʲN�g�����>cU�qdr].-��.�9;��48��؈V��t�]�:]�ʺPe��(�����We�:e�����+	��T}���������}�F�
��8Iq9IѾ%U���� )�8�
R�)M)��ܢ7��
Ѫ*m����.CL
�<7N)����JqW�RAR�!�	EO�{�=)��j"����Pє&ύ��	�pLN���ˬ�'���<}Mr��k�������� ���O��S�VƋg�_]s�͠"���@"�me�"F���)�/�'v��k�N/��7�Rt:�2�5��<=~:}s��,+�%@-qSK�S�v�S1���p���f% ��lM��G$^\���*�(�[õo�m�f�h���p���e��i�8�'�u=�"����M��b�j#p_l#�=�ӗ'�yw���%5��m���\?����>���f����j�|��ܮ�ߒ�2�坎B�O���_��S�#"�ہ1K#�p�ث
쑚 �ǋ8�W�����|w(�]����D^��D}�f�h���ظl���ܻ���glnvq���& 6����6��t۳�Cln�MڃMlZ6`�l�.R�؞m�s`���h{���j�f������u۳|����l`��y {v`3o�w۳����&#o� �E�"�=?��/آ؞5_9���h��t�,��h]���;��ﯮ�Z�&��{ �?���ύ�Yi�j��1)�����om���e"9L�D �AYNҺ�`�E0N�з�k�|�� �(�iDZ�F"��F�-���m�[��e9�H�R�A��(yHy�<�� =)��IZ��"��F�Y���,}D �LYNeҺTf�E0N~S�'��#H{�rړ֥=�f)�Qr��<�P@A;���,^?�|J�v_WU������߯����@F����EL��qr��<9��N9;͐��׮WҌ͓�y�d�:O2�E3$-i    D3	4O��Q���<YI͐}4z��h�����<JzQ�'��҈�5����O�(yBu�<��f�M�\4�@��i'���8�e��E3$���w.�E�y�4�����\�2sWM3&ٺ9}	4��.)4�%%n���>��7�}����."���)���n�x����{�53�;�ЬCJ��@e���W�����()���Ĭb �$Į��Y f�!f=@�b^1Ob��T�b�b�b؞�E�I��� o��.��/m�n��T�G?�y��#9SV�u��̭����uϫ�@;J�kG���]�A�ߚ�>`�vz���ׯ���q1F��U��P%wd
ܑi=4oKY��%<%1<#���H���J!2r��v����z��ܟ�/V����������P�Z�,��/�^�pT1f�Ҏ$��OZ��wsL"��|H'��$c=�ŷ���\y�+9�n' xt+���)�?9�IDzQ�(�Y�����
У�4pxmW�HK-�P��4���T��nWw��w�)1�2#3��}$qx{yz����W8�ϑ�ϯ��$T�g
2a�Z�M�3��{����F���^�@��ǀ>n�>����s�w^��b�yo�	�O��O�3F��� ��΍�q�q�7�ЧMЧ��OF>jDC�}���gM�g�9�?��pg�~�q|B?}yB���z�X�����6��V�N�_���ḑ�-W,��+�#���)�C#�jp'""��̜̓z�]i͖W�'^��9�e���*��9
qJ��&~� E�*E\��]'��W44�	1MHЄ��%���f���&_?�o�4��ƻ��=�����Du�q՟�����@3�X	�t܉�v�����#��=�5�m��P� ��6O�}�4ͷ�g�����MZ�����@���}�3hmM)�e%�g>�v�e��e
��Q�����_u�����O����{c?ϸݿ�<�������u�Q~�6��L�K��YAUSx"��Jj���,Kr�KT/��l��~M�m6V"ǫ8E���DU��gl����6�<Q�]�{ھ���f�\0�q�32w���� ��"�L�ebg�������p�(�΍�=h�g�|6{�E8cs��0�͸ͣ��Ԏ���q�p��ρ�?-�����lԜlcy${�2#��� i��?�������a�C���E��l��dǞ/b:���G�ۉN��l���}��?��QUͨ
�N�ё�)0�U%q�(�+%q@t���W!J�Ι���
�?� QT�(
�N���\��&�	�@(�&B�J�h�|?�C=��Մ�@�T	�KM%�����G���Q�,���ӪD���3��r@�W#��SEt���JD{i-S�� DE5�" :YD�[��Έ�&�B�Tg�I��O���U"�9qO�$�dEU)+�	�Ω���>(��3��I3�4��ey�kF����xJ��)�0[��1@<Q�G{�*�H�1�1&����<A��ɧ���b��P�?�X>�������kkWĊ��j����L�����+*(֬t^&d�������o�$�f��e%�4|N�ϱ�U���|Ҹ	����Y�/O|�J����NR�S�����_ϴS�pFj۝2��G�v�+;$���u~��V[e�'���~8-]}�7 5}/������d�6����W������P���@\Pl_¦�
J��q��o\�i�������ʕ��
='Q����?���<ܕ~�(��	$d�W�?�_���+6��K������N�`�<�ݯJ�(A����V|s�|��#���@.ݷӂ�tw��ul��d.�ڑP�%�ڮ^�UL����mz�:���9�Sxd����$���xz��m�ۇ����g6��)ǋ�ά�hT;/8����y!;yئi�����G������+cvְ�Q��(5S�VjP�<!FWD����+�"pSE�9b��@q<�$����Kb?��5A@��&d�%f�	2�&HgM��5AA��&�<1WM��5A;k��	�`�4��<1[M��5�:kB�	��M5扙j��5��j"����	�H,��l5�Fׄ�	6�&$hB6�D�'�	9�&dgMȡ5A�b���I�4WKdֺ�?�T���p�i�p����S����O��f}[r��e�Օ�4m�O��)Bc��i�:��S����T�!�XLc��z��Fͦ�ю�rg��v�F�����t?ڡ�6+�К˝�jb�Zڵc?��5��Y1�a���&F�Ơ]�1�cXP�A��chM�yb�� ��c���d�r
��Y9#a���&F/Ǡ��1����1h�r��0O�U��c���d�r
��Y9�a���&F/Ǡ��1����1(��x��b)��:�i�:;
��Q�P@AE5�"P<��jr��L��J���X��B1��ڊ�	ꌱ�Ø����J�Y0��h�F(�����cp����g�1mi�:�3��'�`1\�1����Ƭ�a{b#�Wv�
LO�i���2ݹg#~LsȽ��V({�-�g��/�{I�yg�9��xyC�=!Ȟ٣-Ax/�9�!G��ے�I�@���1e�{I����2xy[�}{Q@{Nh��و����m)iQ�]a�I�g��hj�K��mHS��&	{�:�='���Z�^���hC�Z��:�s��Y�=Z)z�d��	�L�\�g���	Ǯ�S�K�d�yz�ԅsH�g�$p>O�ϐ.����Ig�!y"�ɓ �LA>yRz/9���KH�Hg*%�>W�O�Ԁ.{ɨt+ҙX	����+u���_�:�Y�3�@�+�c���lKgС�P��DE����>|a�v�?�r� ��g
:;��3�С�V�v�_���9V�_?[Gy/e�G�}J�%�Dҵ��:0=�G_��iy1��tmsLυ��M ٧	�5�?�՚?@=�G7|d����
�������c�;�Os�j�u���C�z6P�n�>�/���Q�.��@=v���4m���F�z>�g����Ӡ��E�����@=���4c<�V�EX�]���@�9�	�gL�S���?�/n�{\ I��3��X|w��v�_�W��m��e�IGR�f�1Ӄ��S��t"qz����i�?Z��c��6'�c�"��16I(Ur Q+�p9rkC��mq�r� Y+�p1r�����q�z�q6=�_�� �{d�)�A��`C��@�p�A~� e�L3�j	P[�=V�z�P��Oa:�s�F���OT�/OT�W�%Y�$�=֧�>{w�x��Qah~4������&���>�~^�������TE�Rk���YHD9'���qB��V���������w����c���SsF���"�?'_>���˗������~��Y��_�G��+�rK��xVK<�N餴�as<F
�@�t�����D)=�ŷ�ӷ�I!.8�UL��R)$#s�Ɠ���h�8Ǳ��~�o��j���sb� &l���2T�%-S%BJ?VV�Jߴ(��bQ�}�Br%1"�#nUN,+�����=)LV&�^&�U��I&��4�\;���o?sn�=H|:pp���_�{}۾>m���,bƲ(���������s.�����x�YɑZϥPu^1��9�͛����{�
ՙ�V���F�J7�9�Q�[�N߮�[��?�>����Бn�H_MF7f�
8�
 ��^��ELp>�s�=
t����"����J�1�����$|����3��'M'��Y.�JOj�:N:N�N���B��nd'M���w�o��JE��z��6�b���1N��U��ϧ��xx���HN�FW2��cD�a��I��<����_�F��?hc��oj�=N�k��6hmР��ӆ�<���ڠ�i��Ԟ�/h�*k�1gm��է}f������=�/��.ڸm��	�Z�߷6hC4цڸ@m���Y�ٳ6���/-ڐ2��ؗ}�[����+kc�vY���ʂp�#��%�1lWH�Q��"8^��_=����lo��    !J�d$T����r,i�CDE�F&\��DR�u��o��h3U]=D|��3��ҡ�ꇎ��D\
�`(�J"���,D!.ӽ�iM&\�o?B�r,Q�ˉ�P5�H�q1�x���]4���:�%���q�Sg����+�ػ���]��� ���~(G
J�bSB0>���-E��$!6�jؔE�:	2��1���S���c�����t�WHX]!� �<8_"U#@OA��^�YǮ�:vu�Fyz�IX��� ��7_��Y��ӏ2��3��I��-�ؔ�� ?���!��]a����*YT(4*jl��v�v�y:[5�L�R���y���+@��%��׾��6�*J��(�A����-�Y���d�z<��Ι}ݹ�Iv(X`�	�IVPE�#Hh":G��yd����G�xd��\?���<�l�&V�OU(�U)˳IKI�|�4���@z����� ���|�ZW�y�5u�I��ֺ��*�Av� ���]e'����Ne�QvP*"��ʲK����&Y?��^-�哝IvP"���g�����;�l������Nu#xc�C�c�p�7��YL{g����z(��2�1�ʌ���_k�����ܵ]�u�]ڂ����[ޫPۛ����zu{r hsR�?KSaW=�Z��},����x��v�������>��A��S~�#j$�b�����NfN!�ꉌ�6��� Oqx'-��q��ơǗ����8���(&R)�� �Pl=c�ֳ��*�������c���cֳ$H@�J@	�[�H��<��_�/f��:�����u�.Z�I�ߓų�O�,�ݮ�nW�;Y��E�T��[��>-n>%�ų�W�uzO[|��+�#����~Z'm�B����FӵZ��p���S��:ы��yoJ/P�JA1�p^C��/O��R�Yc���� 2M���^�i.������ӈ��$��)��:��0}��m�c������͋���:���)ya�2�8�ē1�B����$w������%~r��?q3~z�rq��e�{	�~�-Y?.߭Ә��������H�޿���<���"��"�i:=|A<���1���uXY��	�$���>h�̷�c!]*CMN�E��j�=�PU����z0��=�Zr���y��4d����j�쳨@�J2}y�����e�I�e$2���d��9Y�0g�z~8�p��Y)��*�c.�I=��?�"LD5�K���$��|��-�@����9%����&�hT�� u�F]�g��h�a5S�QW}���ER�҅:��sE}��d�����'�%ʲ����\��g��>�8�����������FG�����|�<,H����/�~4`�[No91�G�ת9��$y���J W�ȕ��Y�;�r[��ܶ���\�"WrgE�h�g����J.,���0.��[rg@�X�a��b�N.r��\ȝ�l��뚣����.x)��u wN��k�� ����v)OM8�xM����8>^�㸗��1��	w�8���Gou��5��KK�����x�X��c������1��Iwd8���Gvu��5����1ϋ��<�M�Ǹ9�
����<�e�}Z������r yB$_�m1��qT�I��rR�q-�sIh$hE{X�V��?�4����Y�}��)�
�ӫ>�h�_߱`.�	��W�G���]�O��������_X9�,��qN��iUE?���8uJ&����w�.�	��'���!�?K�<���ȹ'L����4b��7����ͧ����x@v-�H�iG�_fe�����A�է�!Y�I��Bc��G�l���!6� �?'��kFY<.�|:�����GpU���V�~�5��S����9M���	e��l���<���*�є!�+�S���)f�eeF������R�����Wo��Jx��~�q�^P����$��ݎT7���5�%�����i�%C�N+�"��ˌ�'���uB�"���~����a�+5Ն��[��[�9?��>O7�)!���s+����w
]����f���0�a㬏L�����6�;�МWa�k����Թ�u3���3:5�V}pM�kҘ� ���Ƶ�����<l�� �ش)�\O��ڥ�p\��\�>�f�5k�u�z�X�f�Úuƚu�Z@ZPi�7��d�K��g��_m�o4�o|��W4�*�B���G��OLؿ_�v�{;E�V[JD��I�4��%�2�/���L�H>�TF�=G�E�;3�2���]�Z��H���8� �8^��8N�(w汭��Z�鳧��Gl�#1X����;>�.�I������� ���c���//�� �F$>��_�4��ﯥ����y?�T���v�u�<,]m�>s۵�Vޯ>�����������*���_}�z�猴�}: "�0d��"��6<D���`��U���v��0u.}ɜM��HdK��_��W~���H�zS�:㫚�K�%J��_|��X�f��G7��ȅ/
�������al@/z��^���-H��������%����;^�F<O12�%��/u�K��÷�*_�_�_�2�,�;?|Gjm���_�_�r�<�;;|�x��/o�� |�_���n��2�_0݈�t#�t���'��ogύ4��$�n��iz�O��7�z�F/�c�+!r�g��4+�4�⎒!�
2����I���6)z"��6���CF}�����͡��25�մ@��X�Oi�f�?8�vH�_f���I���m���7�vsc {�1���1�ξSAA��ϩ��{=�	@͑7���#����E��j=5���TS��ָ��<RN/;R�����U�	�;^~�QN�����J�J�U��x�M<�OA;��VQ���&�A�u�#��i�[��N:��v�����_�a�Bg�	���O�6���b���x���KG��:��|w�)$=�LH��V!��`C=�o�PPu�']���yT�8��=��K��4����a��Џ^���@>��k7�%�?M��v˧�F7S>Ɖ��8Q�,J��0��37m��^�]�[Ri�n于�}'J�9�kD3�>A|j}�Fr�R��sӊ���H��&Y���e����!�,P���>��ǞpVv����Ol�Hu)*�U������Ā'v�����s�'+��܉'�
f��o�w�^$���Mſ_�?F��(�a��7��i�IbAd�m,ד�<��V��25:�f�1O�W���5<vU��{����6`=M�eW���#��5�o���؎��`�]_+�	`M*�N�8p=M�Q1��l�PLx�k���;�[��.�����\'JQ�W�TYL�G�����(����`�#Ş_���W�GD֤+��ߙg�kjg�NJ�@e;Y�'v���
�hfӲ��F?�7_Vi�׏����c0��P�=�E����G���߽��ɘ���[�iA&��.>����NAW�p/�9���&��+�4�b�&��iT��ˋmڔ�B��a�WzEA�qlB']�G��.��Z.��(��ŵ���7K���F����Muf1������t��SXM���r���Q��8��:W��^~�u�z����ЬI9ќ�<����pn3�i@��!����alX���2S`YL��+$Fj�"����b���� +ƀ0�F�g��H-ZR�:���@� ¤a��|���)B�WS@�V#L��A��׉�s�,�0�Y5�, <#�Ǫ��uE�y �a^�0�a:^8׹a�@X ¢a���s�������ˀ�|&�s�gI� ��V�� ���:X��#��a;��80<#�G��P�SkP�`��?�\�\0�f1-�C�:��C�
ݜ -�C�-:���!��ãC�����hQ�l�!��K�.
6�| V��u��K�<l:6r�t(�t3bx����M�<|:>r�t(u�aX��u�鐇Q    ���C��nF��u6ꐇS���C��n>��b��N��Xu�aա��͇a>^L�٪C^�;�:��1<ZL�;[u�ê�`�a�U��U7��h1���a��S�]{�S7#�G��p��tF��0.����O>$_}�����b����������1��IL�X�x���-v�I/t���۾d�$�E;�ဇ�s��+�(��D��d�W�'���=X��Uh�iw��1�koR^{�����z��^����MUYF���ľ"��u�:�d e����W�Z���1��qNi������>ܯ���D�V���z>=����+DHd�����I�Xyz�w�`!��P�j��y\\�n�wZz����~U�;6%�D�8�)�<��~�W��Eټ���%;�w�|��&�_?%/Jc�G�i��g�c|��}/CLC�1��bT<�	��5)�BwRU��ͳ�˚�W_�Gϓ�1�r�)�pr�mC9��}Y->��"��+"M9� �K��G�C��,+���� ŕ�\\iʁ9\�jO�L͏���XP�I�u��x��E�A�&ރ��r��OR.�4� �.A�[(-:�At�/�Қ���D$#���z���GM9� ����x���AC��`����A9\�D�P�w����n�A�Ci���w�3�cAҍ]�@�W�V_��8��z�9��a�}\��<|�l�h�����_�����1y�M��˯�f�~u�DZ$_�Ak~�_A�_��ի�Y�Bbu�����Q[�E�~�_�F��j<ֶ(Di�!U�^��4>-;�/����a}��� ��Ȑ���\\��dH�Z��j�Z;Ra�q6�����I�4�*i�����~�_f�~�1�Dv�(X�l��dt8#j��N�D�Df��p��̲ln��,ݦ�,K7#Siq̃�*h�2��� �9�TF4�Y��(����ʔ�Wk#\,��S��+Lm�M���ȴɍ����$�&�rmBI�z��E�Y�zѱ�KV�L�t�_�S��4�3��Cj�A�-?��6'����Ԫ��.=��3�U�����`�k^Pa��xg2!ǟ钘�_ڲb )B�-^����s�"����]�8տb�"�P����ܧ6�Ww��,ީL����i�8lC�|?��U�
�媐�V_/�ݮ�nW7�������)�FU�ʮ\�p� �F�z޵O�Q�/DLSV��m�a*�#A��ܼ<��s��ez.ޥL�śaN�Q�'{�R��)��<H[�1LB1mҢǦt(x�����Z+<l����O�-F�f��f(CU�P��b�ű[C��Zja�Jyy��A,!)4��6�0�R˰baP)�,�2G����7����Aaj$��P0�aa�.���KJv���>fL�x�:l�JI��)I��P���̫��t������`2凜IVb�3(na��'}^o��>g�O����e&s���䀒�+e)�#�a&"�Z�P��,�+���6�݄Yrv*T�p� �e��͂�U�1�����o�}Vy�e���P��3[/}i�T��l��I�$�~$����B����fc�b[7V�}�+����L��$��":VkdMN׶��i7��j�Me�b1K)�iz		�YN0M
�dDY�D"\��g�H����>��U'SfT$�j���0��,f)�:�.WsS�W9�#_RQ��.�V�~�Y��d[bd_�\y�R��b�j���C���)��g$Q�\���KU�J���#.���m$g^uY�[��Z��tXg������rΠ��+�~X�'�%i�D8uM֊��K���f��P3ͳU����h�WSlS*�X���?��r}*�f�\p|j+�9U!a�ދ`<˙J�����+D3P���5M'̈́2��L}+�A5�Y���>�f8�6�ri�I3���YlD�FIC�"�ΉªV�t��j�����4�L�
�G�ICpHC�r��j��[�E�L&�'Y�:�Vq�=[��'Z�2l�-�D/'
NJ	K�KQ
��R|S�9y�U)�(��D�����&�(�Љ�c��P���D����]��5�5�;���=Q�@�:�DV�K��\�AV��ₕU�ȠZ��&��DϧYQ�*�o�*6��)�{ʥv��T6S��f������zVt�O�)]Yo��ܕ]D�|;T>�,�)�$���"+�%�{�2Y�9�2e����!�"�y
o��J�;�s$`C�(ohz�����̞��D}g@���Ջ���E�yvo:R���C��:�n`��(��8�&�D��Ŏv��֍�!�y��t��NQ�i�z�[(S�]�%vL)�nܶ黎�k5���q{,Z^�*J�&+�.� #{
Ud�%�\°Wa��47"�~��-��y��U���(l;��[ֹe/{|8�h`Bi�(�F�%4[���M�m{NKW�	����͖�/�����\"��^t�� }��c�r9�_B��y�SF��:5���n��>�)�0�s�7�غhu�4�@�'Tv�re�_�m~���{�Ag�Q����_�����i�C��j̛��=t��$ԉ�r�H��0_�M�<�b�l�:��\��RaJ�~[S�7ʘ0+��Gm�b�BM�,פ��yZ���E�2�&S��+:r,R���.���Nt�e����[�O�1G���q?@�X̺����P�"�. �0��L�XEM��8�_�b�V��U�֧.����&����V��8A}�"E����ʘ7��a�b���SҲ/�dθyMz�Ĕ�Ʌ�s0Cn_�P#��0��Z�yh��ֺ*�����YS64����<�u =A��,WɼI�����CP�|����`��i�뮁�{�E�������;
k?ը	�z�#*����j*bd�"�M��%7��v����~>�����"��<���k�Ck%�*��z�J���y��C�HE�4�P#��1y1��)�N��m������7IP�Iѫ,�t_�v��V�q.!��� 
\UvެV��cp�BŤRRvʈW��U��Q�6�ס���QP�5��7 "�m���3DvR�Q��F�2t7��2��*ۮLMl}�H�8dы�rJw#c:�L����*sQ`(�!�I.xssi�s�i�*5j� ��7���+ݖLy���a�p	�Ϡ,>�z�K����up���6`��˖2�l�w �Ay:�!��U�c3��!\.������w75�bJ��D��АMTTsנЩ���C�o���K��/I���~�M���A��=|$���|�<$间����[���_}\mW7�����՗��E4_G:����oq��@��,�*�:{6���1*������1�֓i�c���b�ˮ�L�����3˹�A*���ő���9ZA*���:	'��.W;�J��kǷ~�v�y�۰Uyv����C8<_HW�3�x�٣�^�����iv���
vG��������f��N���^��O����)���WҺB�:d�*V��4��ax�G�K�4e%�Dl�I@�z���<�J�~���70�@,ަL�Ża�/�(g,8JU�b��f� g�c;�H���L�i3��C�e�/y�9����.y�O�Ǘ��,����XVm���\-��`TJ�A�q�Qv�We 0�S���\٤۝$m;�R,�@s��=���ݕ�d̕��͕ɋ��o?�7���8F�=J�K[�؋q�����V�nAb� �F�`����.���2��U�؋���CJ�Dj�d�₆.ACrt���iH��!K=T�ԳU��OD��U��z�RW�����@eIhς@[5�� 0w/2�lt@��R�A��AL�V��n:�-����/g},�_<�����o�nW_�+�(^�~S0��4�'2�1WS���6�;�4.��V��O���6�(�&��d���~U����e���
sez�ǹ�p}v�9Kvh!X]g� C��X�f>�����mRz��b]{��\No��9j/	�Q�k��m��̏�s �9Շ��
� ���6tٕKڶ�kl�M    �~���5�X�7�v�!V
b��+t�
��Aש������� "�f=�T��:\����X��1\���0�^V��<<����R��@0�,�|ǀ��)�:���+�տ2T� ��������)����=�RɊ���*K*ખ�:��w�f~�u�cHK���*A�SVji�U���yo�[ N�ե�h���
TuH�`�a��>8e:�T%@F�-�P���gk ��ZX;$Ip0.I����6�}N����F'���s�e���a^�����*M;?��8�4s�ペ�4�K%V�dϘP�YF1}YT�_O���� �q3&�{��'-9��nhr�6E?=jS�^xL�
�ep�a�6����H�=�W��<J��eg2�SIG�z�	���ɥ�Cw�\o�*=0��q!����޿����t��B����wZp77O��������z󠿛����6�����`x|�/"XQv����{���� �EC*�btY�۔�8�4���!��&q�tZ�QA?=�'�S�y7���=eW,��	�Uls_*hv:��sUĻ��9�*�!N��bl��R������mC?�ee'��R!�^UP�tTy����C?�ye���	�З��� ��H�bvr���;9�"��>�J��9hAD���[j��\ہ-5���. E�����kǢ����fAqo�W��XU��e�[�(��wu-���ύ�Y)�<��E�ͮ)_�7��q���N�9��D%@T�VTM}� ��j�V���=�U�Fx� Z�r�k����U}����VR?a2F_+���@���]�-<���9)��eR?K��6a+)�AA��]ʍs?A�s��d�~N�X&c+i�7B�ވ)�6�c���4}�%��R�([�LZ4]Luz��A�s����˄���l%A0a�˄��>�g$���Gis+��h+���CE}�˰��z;��Ǒ��աf������Q��µ6��`�K%hFַ����f&�qbŰ`����gn�i�4ʤMe�AG�sL5�Q�:Az�k�%�f�d�e���R��(%�4�`S1k�43�v�����أP�ȝ3��#T��4��/�9��}�r*]4��'���f�A����4�?�iLQ%VŐlĦ�]"HU6��ɒAjӗ��xw��L���U-�M�� ��K��=86^����S©�&�����U������G
N���!Ioz�>�f`��A��y�I�6����^����%�U���9� ��XK���6]EZ�q�۰����C{M$gl�[�CW/ՠ��5��3��ܑf��k�>���vw�ܠ�1�������US����UXL���;C��I\��5]����.�Zu����,�l~�_�׈~u�P9t�S"�FuP�z��5���й�V$�y���-� �9��b<l�W�՛�]-*���U�446���f ��w��W1��nv�U��y��ʳ�Y8��Q*2	�����x�1�s��lc���UՃ�٣�Ή	�u$f��<Ѽ�px���n��n�rC�j�U�c��Z{3��y���it��I����cV3<�q"zFy۬>�k�5%�������;�Ki��_���6;���5���Z�P�Ɲ'�4r���/C�2���ս�hҷ�9T��b���u��e��R-~�b�-��:�b8^,�k֓:H�2%{9~q������7Q,{k֣:H�"%y��«bn��V`ު�y[�6O¶�Z5Np�|~�y�M�į�j�<��e^�a���i�wx�#��n�P��~y�yWR]�2�,�>C�U<��f���;��ĩ�W����{my�`��~y'�y�J-�2�"�>G��h��~y��y�F��2���^_=?�`�����X��or�zx��ס�^G�s8�#��=�UO�w~���v=�O^�v=���i�Dm�e�]O��9a�j��I��-�I������.�
.n.p���3pI w�����s���i� ��=��-���+��������h ��0*�+����2�;yp�xO\�\�\��O���U�Ƀ��hમ��ࢬ,1}Y�U���'w�f*(�Vhp�M]H�!WB,dĦ�.-#��g�ڧ��Đ#%�BNl����91�>)� )�I1�b�G������vΊ��i1D�򉓀.�N]5Z��<�ri{r��%rt�D�����/H����ny�r��\ȝ:���E#׳�� ��'L4�0�PpѦO�x!Zg�w��h�ᢡ`�M�\1^���EC�m46r�h(�h�'���u��P{���>>���-BÝm4��F�`�a�����6yr�h����.�
˃�6}rG��p����&;L4L�ɓKG��pg���0Dh��}w�|H�$�����K���������'v;�ܼ�cn�e:J�T�q��a�%v4����@�G�A�	���c�l��݌gj�5Q ��O��E,ot�2��:_�����rD�1O;{[�F��9�i��Z-�}�_��	�)�+�j!��lܕ>s�H����$��<=~J�ܓ�Řp���m������zu���:Z&w����i�Y�� rK�*��]Y��ޘ�b��7/�wk�mr��S�4�����w����!�%���T`��EP��gV߮���7�4?�77�0�Q=�vƽg�}I9�5�.��lO��n�Y���yi��R[��lC�))W��l�����v��s��yʧ�6+���6Ԡ�r��v�7n`{�lw�tޅ��^V�]joޑm�R%�*U��b���ٖ����|�j�e�lC+)ױ�l{����6/�l~�a%ۼ�X*]I���d[����x�d�����;���X�֌m؞<�b�X��Y5�=ǒ�Tj5R�a�ܽ����:F\�Z�c��+V)�z)9kP��J*�뤺�}9�TW}&-dH�X���n�ϖ�=ۗ��Z�鉒�����(���%���ʤZw��Q�%*�@T�)ʮ�斬yZk��XOX&E����eB��QY�y������eC�(�`�NE^��퇫J�v쇫�4<�ښ۾扫���'����Z���ǘ����k<�Ɉ��i >��eJV���2W�����+���?�8��3��!S7�]���Qf`^Ӳy]�Y0�'#3�o\i�z-���F��Zt�UsܔUzC2)�L;�с���QF��ӲO^�Q��'##���.)���Ua��l�䰢jn���*ޞL`ś�鍘sU��7��]O�v}Qb�����H$e�^�Ñ����p��Ec�'��%׼.��\�ve�+ޔLrű���I�7	��J-��v���N��"�u簩�"�^�!B�g��ӆ%F>�8��qu�<�4;���b��y�ǁ�铏"��@���W���X�%��e�,�����uؓ���\����3�ݯ&��(��_;�^*���~�_J�[�y�O%���۶�f���;m� SN����*0/C�t�� ^Y~�(�8��::<�S�c�Yv���v�y
Z���h$ڦ�H�(t����ˋ��v�g�oN�1}�@=?R���_���7e�ts��&��0�MJ[4v%���R���������AU��EK[��#1�q�8�$dW���Z�m��7�A�P:؃
�a�h\{=���,�I�!{0-E�5�WeT�WQ+�(HYy~n��GaY�eFyP��h`����,��Iaa59)}y�	9���2�vK�s��ϐuق�}�PŢs0=�Q�,F���!�(u�r�S#�_}��N�
�՟^����.κ��t��bX�OQ��*�y���;����q�\iؙ���;H.��Tr�%��l�f���?��ߒ���Qs����v��jP���k���M$�^���5+�zV�G�O��[߆z�)��eR���ӻEH����,J(�ڶ]#�Wދ �2��+N��P��cPx�&8� �^.P8	 $��m��Qj���+ŪVT��w��ͽ�����)�(�8��S�ޭ�7�r^.w�I��u�6>��I�y�^h�,��P�R|�_�޼P!7{��jtHcf��c8ѽ)	�R^.E0u�w����[.����gׄg[�ҰM�b������\N`�#l    �[(�D�룾g�P��g#�� �=4{iX����e��d?����k$�`�4����K�4�W�����X�ec��?lh����ϛo�BC���)xi�F?N�F0ԋ���eS��j��[�a
Rhp
v-�Zo �  ����ipű�6�u��e^6�O��a��>�����c3��^t��e^6�_�&�6�Y?�ݍ4�� q�]�Tޠ5��<]f[����H\�>�PJ�65������A#��}�2�?)�V]"O��%�B��@�-�.�A
a�4K�^��K)�=�.)��-����SeO�����a�ޅ����zg��.��&��BnEx���;!J�q��?���N�Y���L#a���FT�6�����eO��Z&��Y��E��fQ��_?��:�Y'!Q��T2�-�U���������4���Q���J8\S{9�-��Ia���D;�<��Au�����Cq\V9�� ��(;ү7��Z�i�zSa�`�Y�۞�C�Z�b��� [��2fW�׆���6�o�؃�9��#3���+�V_�r��˽�Wh�0)}�֍�h�v��h��X���`�O���4zشmUǴ0��l��%4����Ҿ6mq�֍��������Y:4�͝�B�{ۭ⭀M�%e%������%�����d�Z��7�V��Sx�=�u�.)�;���?�{ev��.I<y��zh6)�@�k ��������s������v�����7A�S���T{:~�;7Bk�c鲆l^N�?Q,?NCu��"4;{��2RBu�,Wd"���t��K�g�E��W*��vIY*gh/2�G�o|�f�9~�[b�oJɲ[��<O<�P� �%?o�ֻ}>Dq�����]|�͓���YG\�u��'5�w���Aj���Ǫk3߈�|c�mR�:Y�� a�YmR�D�����H�&�*:�SK~M���0z�@�i*�8�~�e�\&�&Y?�B��\aJZ& xQm��t(�����Af�sinJ�~NBA�,D�� �m�ۺx������R�,�(��V��Z����G�ryěd������4���R��#��� �r�qםv�_c{��!�����S��\N�ݬ#	%�\��&�풛OO����n?�MHA�q�ۖ?��v-�=ZS��o�"=�WQ�9F�z�MK�M�"K�n�W�'�B�!�{�
���PD�+�k��@a�d[����(�� kWS\q?F�d��፦t}�<����U(���\"�*��꘬��.y�.�5����]��U����C6���ݭ�j�bY.v��zLLo�I�ZӃZJ�D�z!i�p �!�����������x7�T).�r����.�ޚSP��ʵ��K4)�9��U�>P�eb�2��"�D��*l���vd��Q�+�QWPנ�uo����1�5LLX2�r��K���Ū2�h7��)h�~'�}�vqy�6�nO&��MȔ��{�be�)�D9��m�6(vP�bP[X:NLo��	z�rj���^au尝%�U�#F(V���T��!$({P���LHa=8)�;�.Z%E\�{8V/�A�Լx"ta��������V�
e)�X�v��}��UE(��ų��'"��)��ץ|;PfT>�T>���+RP:�,�� Bu�<���E�@�N\���S ��Э�:e����o����?�	kY[���W�S!�tP�){�Sg!O@���T*�T��
���K�����B�B�VZ���@�J�B��	���+��OA�jM*;L���Fj������0�������Lɧ�oɃ�V������o�'`�����$o.o�
^�'�ϫ�����u��A��Q�%A"ʙ]r�v]��8��ZUUG��1�~�� e��x��L��f�B^O�ʔ�D� ���~N	�C+ZY��N��.�3B+;C+�A� ZU�
�NZ�F�Vu�V5����4������C[��p(hi�Z7����%@�5ٮ�$H�Mjq�Z�S��w��w�������6ɽ�L�)5��
l+X4`Ѵ���y큈��t%gĮ����8�5}���߯~�J��v���WI�ih�&��x����c@������W����q}�%&���������Z��a*����b�IQ�����8B�Qc��J��J�
��x�޼�7[3��7S�U�f $j�Ԩic�X�3?���rwJU\�v}���4�d���8d$����lWȁ�XYo6O��oW�������1�a
b�z�_I�$gX���Zi�HpJ�"�j�|=��+j���Q.�W����`]�FN�h[�qP/���������{�M�w�)�+��O].	�C/�.|]9g�tg��^dV9���*�'.�eq���_��U*� ��KKFS}/EӹLDR2N8�|����L��U>�0ΞE&Ad�,����>�vAc�1q+�H�鋧�xǇ��x��
+ߜ�r��Yc
4���5�_f�yv
C�	&+�F�!�9�Ê��)�+?r3;�_]!H�!K��קOk�%�a]��JH�F�T��X�i��%!�Q]�3[XRW~����8{��������<<�]��ha���Hc�Q)c��5W2qX��>V����8{V�a����M�&Ab!1}���ys�q*U֝�g��Ib���'1c�=K��ĈEb������	��%hE$F�#d�<1�9&h�i������sv�9Ξ5FAc�������~�ln��.@dq$Lb�iq�c�G�r ���8�+a��d)�x��߅��"4�"�/��to[����)���c�?��z��(ߨ�ʏ�g}A	��p�E__V!���I�b6��>i�X�X�o0�3��z��(ߜ�r��Y`PƁ,e�?�߯�A_�/�b�9�%m�B���敝S_�Tp���*��g}A�Tph�B��%��~���k}5uT	���X/�����e��guA���n|�e��%���ť^q&-����W�b�?iI�S^�To��oF_�q�+/�m�����M�����n��>�]���G5��i+�>���97ﻗ��B��Yn�=��8���������s�q\��p$%'��1X)�v-}��)�(����gUA��n���l׏� ���^aٸ2*�t��h[K�SZ��m�oJ+7Ξe�R��_�����!lN���(>͟5���2�1��UE�~*6�����g]A���jZ�r�oS�_e]������n������%�w��f�8|��ʍ�g�A��Tn�J~�ץ�KP)bM��PD�����a4}�S�Q���ύ�g}A��Tn����l���.@_4��F�qRC�J&0�ǎ��)�(��Wn�=�
7��p�����z��e�|"��	�t��D��C�o3���Md�To�QXa�=��7��z�����m�]���EH_olO��DIN��U���:����lGn�=��8���㠳n�a.��1}�qv�l�Ƅ~�Kɑ���맘�8|�Xa��j�@1�s���[m��W���:�/Djq�8��hؽ1�%S�����S�Q����ٳԠ��XJ:���5Y�Bu⥨�#�H��,�K�NZ�:��w�Z?%ś����B�_ޟ�܃X�=����1H���#���Nhi�B�ݲ�8�6	=�S�U�d�����(�>��Y���+?��?]bkq1Ȃ0K$;m��렭�j������a%��'*��<����I��Zk 2̒� ���ր�\�:t>�)_p� pK!� ��.Y��V����*�j@Ah�*C�׻��V�4�����v���}Z��loϮW�v���͞@D��Q�x��V�и���4i8��ꒊ�%�'�^��N,(A:���H*cy�5gB3�����gD]:{�軥	Q��
ڃ _Y��뽠���<�+ح��}��`�bN�����^zC{�	�eF8$�����Y��=�1�W��WO��ٻ���t�������?2|�.՛\�o���~�ۭ�o6�����^q�*�1NU�"�    �DV�E�\��BF�"ϩ�"{��֢R=��W<��9�0��N�}G@w�KDq�ڀ'���*�ٻ��s�u ��a��Z<���-�:s��ye�?��X֝�<C^Ǆ�����ŷ�_Ow�X
�y��~��v���E��~��b����1	�sĜ�Zb�x��;���,6�Yl�LCl�F��-�����Y\����ih���h#-�-H�¥��0O1Ѯb¹0kD91�k"���KW�7��;�b]�U�4��Ai�����ҥ�oSj���J��Ԥ�ǏRۿ<I���)���x�ݱ�����?�d�j��YY�^��=��oo�,S�L��z��)�C��&#��}d(�&�i#H,~n�Ϟ��d)zI�+�Z���R���)_�k%x�'�8��c�jn0��fsK�\.~r��N.���R�&=.	Z���v�b�Ѩ�s�Yl�LAl6�Rc��~M��,��-���L]�U\�Fe�
:����"��>�r5E�eyV!껏�eX��|��J�����^����OwO��j_7�xv���]�����&�{np�*��u �(=R3>m�A�{}��#���+ɵ6*�6\�����Q_rf���f<���{� ��%��DH���HPEPEsU�����*�9EU������IOɗ�A��Ez@���*�����o&���j�9��9�e�	\2���l׻�8#䴆W��L
���|���>._n>n�_4���f�������mW�E�f7��Ul��"�T}���Xqϫ�4�������#H�E:�T��{��48��9��C�ؑ|ڝ�_^�_�qi�$Ǒ"3���2],��
�xVJ��̂�_�s����O�㗗�'�]��~^ܬ�0>
!�������׭�v������W������&_�'�ϫ�2^<{���7�G2�7�2�(�1F�ǜ��Ȍ`��:|���Η�8��R����F�z�Mn
`"���3�։D�C�m�Tc�H���X��\�'{V��:�ڼ^Z�Q���l��.(-6� Sv�d�+'Fu� 7$�M	=ŷ1�jm�V��q�_���*��Y�O�� )T��K�<���m���ܢ# :R#��0^��hݶ�F�SjP�5�[L�����-?��1RΫF
j�uS�f�B� !�Y��rTQ*��QLhD�;����Ҟ�yͦ�q�8�����#;�u=��G�؁4) JuQbi�]�E9� 9�G1�:?
E]�Xސ�8s1N#8tk���ᰂ��Pԅ��MyAq�V�D�C�܄�C2�!<u�ay[_���8� ��F�bB"<D�"ʪ�8]���i
ꜹ:g)�?M�(!R�U��I�A������F	��
3��]��f7�?M�(!n�Uq�I���PM�(|���Zz2U>��A��)ЉD��9SM(�tʄ=kLUŏ�"Ԡ�U�4bH�(/�"��1UAB%j��e�n"�[w
 ��$ď�*~ܗ�5^�';ֆ�jB��Б����� ������e��z<#��i�w~�x��L��;��; ����ߵ�ȡ{[Z����u���*��֝�9A��s���qj�+���C'�a��KE�c�\�đcZqG~�줢+��3|���)��u��Ӗ�$��x@Jʣ&���e�������ۖ^�*mp�6O�7���?�I {{yx�b
�~��Y?g!Ǒ��4��J��>ŹyH?��.Q���G�sB�H*�����{P��4I��[�9�h���[Q/��n��^^o�oVM�0�H���~����'�"�8�e��Mu���=�X!'Sv۹�"R�}6J���ҍ�Y���@O�*���w!����~���,t�5��8�(1�v@V��8qq~��✢8���*�6}R��^�}�F��;����DL@ĤZįw�du�^��S�dU<�)�^�ds�H��$�dӗ�>7�����f�]��	6�6?�	����n�E����������X56�C6��Nz�A���&�k�H����U�k�z*�&�TV7��24�o��Ԛ�ǮӉ�Ѥ�ʮ�SٵI��
�+�* ?s�����$_W�YǐĎcH� �܁w��p�cH<��1$q�# 9�G���G?w�3�l �z ��<����U�Wg�q� �8�'��O�Z�g�� �� <�x��9�t정�����g <s ��s~���u�� � ��x��9�l�5����x0���xb�x�;�|�5|g�u7�h�eiҗY!����Ϳ7�a�Xs�*y�����}�[m�'JVl�0�~o.o��&��������ǧz��ie�%�;c��Pw���>^2�����T|���8l�U���x�D �4'���@4r=��H�.H��H��.Ӥ=���͙��b�]	'ƴƴ#���ƴ=�0f�1f�b�J�81f]0f]1Ƭ=�0��1��bL\����N�yG�	10��1��h��Oc�pOt�Xt�،�D{�%`,�c,�Řz�x�Ʋ#���d{�`��c��Řy�x�ƪ#���Tk�QVם�l�1��S��;�Cq�Q�d3�;]J���Z���%�{�yu!u$��q��Rڐj��!H�*�ޑ��졮�7C=���C����"�䉒,��=���C]=aF{������C-=,���,��=���C]==i|������C-L=\�ɒ��u��PW[O�"���_���P0��J����8{����r_{k���ZX{(x{�%�?��b��E|��=�j��`�M�dw�'7�]>����n����C`�
�dYvvsr����C]]>}�&�m}>E�i��yb����o�����gM�����\R�O3tͷ ��W���~�6����N�^����mRPI"����������$bʫhVS���=Q�V�/���~u��/NhG闂S�~�*&M(_^�[���k�o����+\w������{�S�L���c��w��>c1�ϸ�����<�g�7k��������ށ��@�4�dYv�s��ł�]-h}�&��=h4n��4x��e�wiw5����,�w�1�и���=Y���jN���r�}���I��>4��q�'˲�Y���.F4�jD#j�$p{'��[8�88��e�?��bE�V���\��,��[x�8xѓe���~]�h�ՌF,��w�1�Ѹ���=]��c�.v4�jG�7Yn�Gc�q??z�,;;��Y��G��~4��~��h~4n�G��GO�e��u�qg?Z�b���N	�~���G��7]��c?���#�}?a�~���G��#-|?|���|��.��j�]hn���Q���p�Hp�&L��2�t��HW��*�� ��?4�f4㷡�����ht ���*�=��c�f>6	,ςe�.�]`�Ir{����͜lh���͒���k���4��͛y�,�<��{&w��ߖɭi7�7s�y�y4��N�Bs�����~6o�g�@�<h%쵁r{�����mh��������k��4��͛y�*�<���)w���vʭi�j�f�6����y�0P��T�=�`l�f�6B�Y���[�νvVn�3x�����8��E����v�hf���g�.�]p��r{����@�y���j�ν6Zn�3���!��#8�G	{���gpE3GKp8�7]�s�-�����hf	��	��QB�^�.��<A��D����/w�����[P4�Q�g��.@�ہ�5��A������că��v��oP6�q�g���.@���=��ʆ;�;8�ǈ	e��o���l����h���]���m{��!��B �������m4x���G��G8�G	
���hp	e3��p&@����t��p�>�l�����Q��~;��B��)��)�	���q� �o[��@�S(�9�88�3ڿm]����hN�j�����1�B�o���@�S��9�$8�� �K��.D��%�=���f^!	^�l�cաzn��igˎ��	���<&im����_�꛺yH    ���-�������� �������A*=�0��H�)v�+���)0���0�Q�W���F��?��t��m\�69~�Ʒf*���ӿiR�6�g����:
L�?��t�7h�_��~x���@�jE����e�>n�Ej��a���@~��o�����V�yIўyA��K��J�,�=���p5��7��>ܯ���Z^��js�M�~Z��+�a}�8�1;��SCD���s������S^ye�[�����E�w��HN������0.Ѐ�A�I���
�1Џ+���-��'����tJ�rR9(c�s>.� ���5P�Bٺh����~�J���m���~����������b���x&�����e*��M��!y|���I�'@-��_���ő�~���@\Pl_&^%���-��7IV�D!o�d����=��Kx7�(���:)&�����U^�3j��Ȟ��'h5���,fQ-��`�x��]\�n�2+�,� �#9��xR��G:��<����U��d�*�%V�����B��ó�۳u�,����~f�dRR��"ͧGMf��$�<d�p��J�1�;Ep��ĆWuW5Ê�W�������U�7(��3���F�Z�Z\^����a w��:;�.�.j.p��J�0�;Ip]F������&�rθ;8I�����C2w6�CP��AY v�����C17��1����v�L��� A�pa��;^�%z�j���K��� ��-�=�\5�
 V8ְ�:df�-p6������Q뻨�ow)NMrr;�	��u��Lh�1d�3�0�����0�%��c	y��3�g�����e/���C�A:��9a<|��^��1���t�$Ƴ�x�O���h�1��c0��t��h4�1i�1��c0��d��h/�1m�1��c0�ƣ�x�3Ƭ�`H������u�������I�=����N���ٿ�Q�/��mw|'���&����p���Pn�#�;}|�^���͍|��Pn{#�;y|G75T��F�`k(���>�c�n�3�_�3����N��Mտ�Q�/��mc|'�����߼����/���w�Э�/��:�쪓|���.~Zߧ��)�NB>P��L�<���Vڿ����kI�犤�W�s�5���U8sx|ʏ1!��NP�~:��(?��~��v���E��*����������O��������O�%�?V7�M�I.~�>�o��g�M��?��ųW?����F�JIΰ�)R�ʹiu���dZ����H�SW�I1�L�]/�/,�b��7Y�y�� 0n����K�_��Y��t�~�0�m��I������v��M���y�¸�x��o�6V��?�����;����_�L﹄g��x��$��K����iO.IS.p�\\���%r�}�'��)�
�T..U����>�ܓKՐK��I�k}������g^_ʦ�K��F�k}����"�<��R6]_¾"]�K֗��ח��������e��ӭ��f��Uv5O?
|�h��O��ӝ2^<{���7�ӎU�5�$����W[�5#TI%��V3>�\'���s��-�M^d|,�����8C̞����A/�΃��K*������p*�0N��5y��ۮ��Z<�E���7�� ���ޮ��uW�\���k��iR���l�"��<H��+��>�D����ZpD��iK-;����Mn�3��a.�����
������O�jy:�������6])�'����]�C4�'���I)��<�w��e�pw�����{o�䶑�����)�b��xQUY��"v�p=>c�>n{���t��z�j�4�g����	� T�"���s(�j�����_V��A�� �vPb!]񀹙��T�L?�t7���%����v�D櫻��V/��9�է��'�?�~�arx�H��ĺ��㇗s5��U�]E��C}8��iQQ1��=z�L){�W��N�/,P���������+�W��V(�C���B��mA����嘨ܻ ���H_^�~^��8�0����L^�h��Ҡ��e����.٧,�����ӌ��Ȳ��Bp�}����o?���[���IY�P�v�.��O�����:�&��ǅHT�x�;y����m��23PC~�Fk�\E�2�wI�γ�0p��!�����M��$E�:����|�>^]��Xi��e��u�:�<���&���Q?c�uR*����ǫ�_l�כų�w���H������7�V���gW���6߈��ze���F)�����D G��;L���"N�j��Nd����6g�F�HDR����l����r	q��[�VRF�Jǲ�_�3�Nbk8��"g%�H�v���:�},���36���Q�!vV�D�K�U��͈�y7ٓ)�~^�$S�D?�^~~��~v�����b�h�}�q�_��VI�%�f?����p?�Tř�����R�Zf7u��6?;6l��2%�8�����D��.���:Z�r�6�{�?�W�[�Z�ͩ��
Gtjš���)�=�岇Wٿ��>���c��V��t��7h���>|*��d̢ٝ�dk~���TR��sQ��3ϥ!x.=o|�I��MM]�m���Le�:�;Ɠ�=7�F���c������$���/K�f�i5?Ge�~"�R畘
ڌ �0~���l�Ѳ�h�⍅�?���I�
�"�w���*5���5$r�����K�\������y�h)���(�<Y��Ǖ�5A��Ç� �Lj�ȭ�0�N9���Yd��(��G}$��J!/�c�s,�1�ǥC��K�̫�]�1J����������]-�����<&PQ����&81�c8��Y8f��������6��}�qu���nu�^��EuY(�t�zX|y�����ݸ�W;Y�@���B�;�RE�j�	�#7��$U���L��E-�M�xh'���`'B����e���E���u~�xT�֓�E�u,阅��Ugrh
�/jl��4+�&bV��Ul:U,���N|?�����j�r4�*)��,����-��D����74
Y2�8�5,U��Mk���r4}Է�oމ(p�C҆.iCq�"����U��c��阮�x��t�
O*�%��?;�.넺�NQ����WrxBN���-uJu�*H��B�q4D��s�:�@�]�q�o�
}W���oD�� ��+�D�.p�!pk���T�ʪ���H�41D�]u�Z����H�Z�d-#T�A�_9DR��I̎(�,f ��a<��� ��Z��Q"HBvćҔ��4#<���_Y��X�^rv�#1,�8��4!#%�Q�_��d�cGLX�1�T��0�	eN���T�Ǝd�$cb�h�,0�e�Cǝ9f/U�#
��XU1��x��I`�Oc�eS���JOcM�TȨ�}�ܡ��������B����\��rҰ�6��O���0bE'��*�Z�2Jb�4��4���2��L�,�U�2aK��������������ƈT�jWiU�_����v^_m��ܯ{(]DK �V~�pш�zLk;��<e��C�;��,x�ڹ�&�G�׮�8�X���!�#��R�_�ې�*N�/\�LT1ϥ,��	E#�e��&N���q�	Q�=1�R��ʝ��|�7��Oq����%7=��f�ؗ��~�:�u}�}�����SQ�<�5��/ξ�V�0�M�;���r�.�-FQ��/ �"i\+@��&T�X��
�O�՝f�̓�^B��(��_������&�!��!d��7�����ݘ������v}�.��*��P��Ϯ�6�D��'|����s)ckKx�߽��88k��Շ߲/2{ܿ�<|�=�oo���#T��e�ڥ֍��H^����I��������]��*�{��d[�|ǎ���|��BAE�
c状�"k3�DC�C]=��.�Oj�uD���bc�Ɏ�N�ʮON.U���OW)t�jpU:l�Jl��kp��H>/D-�Qa-Dͦ 4����RÞ��KYL �Ť�    �,�D�ˣ3v�����a���L�a�,狪o,������/���b���*�C�>�����cu����/�N+L�gb���H ��=�OZ�;�*�G��>V�b�gJ�NL�h�O�,�	X��/E�����s��_�O��+��W�~/E��6ʱSrI���~1�����! ��>oU�ˡ���W�e�LDc����0m���r�"o�|�~���ǩ�a~j��'�Bp^8_�������`�ZR�P��'�,�R/~��/~i������������݇L�*���2�(��VF�e%2>�r�"ܷ5I�؎놫WQ��"���>�"��r��ˣ���y��$痔v��_����<���3 kq��)�y�n�=z�r�/��Bw뻗G���������͖�$�7��?@�~���?�����xU�d�m���IQ�kZ����{M� �>D@Z�UH�����"_r{�xW��M�h���B��䝩[���/,틓v�	�����M����#�N!#�	�p���d������Շ����7�#���4��Me�x�Q�%kT�kj��n(n�Na��	\B-iiu���h�K�Z�.��ptI���W�|�x���6�)��<mnW�o���%���?�:����4�n�nW�߬7�?�>���޼[_{�Ϳ���ݻ�M�$�.���_|!�)�j�j�t>Q8��I�S^�%�b����<���98��߬�u>~x�6����/Q��[�_��!`�v��� �=�|�c �P��W8V�L�o��'T�cHT?��~@�É�k�����zD��K%��4Z
�>���H��P�s����y"� �l	)&h��tV8{��QȰ� ����bBw8v�DV���f9�%��-�����:l��^s��
�^�/K��B��A{�v{�6��ܽe��cN�V�2�y+Fo���z%��ܭ5֮p_~D�c{�^[���;��4Yb1�l���l��!�M�ػ���o�M��Ll���l�MbL7�ck�^;���&3��0�L�z�����v�/��-%�l�y�V�lu�v/KȔ���H[-}�T�Z<?��0�a���&;�ӟ�N�U�b'C�S�h���N��0�dF��b�ӟ�Nҹ"��)&�I�ږ�Lv´���-�씰��Tvr.�H(vJ�v*�T$g�S��S\���XݽϾ"���>�>�i��&��u*b%r:��>��0|���Ӊ�8n�s9�7u;�<��g�OeG�3��1���ԉ�8t�S9�:u;�?�����OeG�3��1���Aԉ�8zbG��QT���Qz�*�eG��E�IIJ�Ь$%ʎ:gf"���I��X>;�cQS��m�I2�qء�<�t���C����T�`[�>����z�c�IױW>�:#�Ot�U�Sv,v<嚴�r���y���S�o-b�::@n���n�O���B���<�
g��ˤ�H+�T�x�'Z=5�a����Bv��e=LR`_�㫶��:�b����zxs�q���n}w��{H;�#���N�B�Ԥ寺�u璏oi�d�Y����|	Ő���,��n�+e���'5*"�$i�HT�4�A\b�=�L���x�>K�1��2Iۄ^��X�(t��2%�RǓ��5��zZtj�_�	X�/t�2!BI�ÒNR�֐�K�H��ޤ���=p�8760'r:l�"6O�`s���n�>`,�t=E���f���)��@=UT� �S�i���\ajVu�T=�+��)R��J�_ek��d� �zJ�ZO��U��*[�X&c��Sr?�0�z�|=���l�@Mư�ɠ�;4]lWQ�f�G�~���}�i,�C����K4,������z�t��0�z����[Ɯ*"�LL�����E&Y𡖱��/����q�#�&�/�2)��	��Y5�g�OUS�vw�o�>�2��d�&t{Y��8I�tZ;�Z�a��/-{��ï�01��R7�E{��II��Lb�&���f��M;z�vk����X�k�Z�1���?}�S'3�<p���-����G�%>z<
��e㮸qY?!�`bHZ+mπ�-@���;= j��X������8_U}?����:y��W��uK7ǶT�O
��~z�7��뿮�>>�yX߮o�o�׏�gZ^�]F���]bB�)���D��l[@�f�����������C��%
]��d�_�Ѝ��%E�TmJB�t�+��#t�B�8���BW�S�sZ��P��G�mI~z�B�U�@Q:�&��"I]��u����f�,uSr��SrzIݠԍ]�/�������]g�_����ЩG�Gޡ�(�x��K�$�goNm�<��<A�'$,�K���]9y2�Ȼ�E��f�_�����ɓaGݏgr:�<y�������O�F:��?�:��(��
���z����/�V�י��h���o^���ҥ̔���..���#�nԷe,�B�lӘ>�f*���E�:�v��E��!+�u7@��� _\����pꆧ�L��w�W/�,>�-��6:wƑ���Ѧ���v�?e��B��M���O��OǓ��:AS��j��{�[�p��y�{�����W���f�ʁj�;K��/��y���1j��nB�q���������z����7�R�L;�.�Re7��d��[���D���d3�*o�ߍUQi�]lq��zU�,����G����u���1z"�z"�
K�Q[B��_Y����o��v���|���b�@�l*����!�#>�=L�9���	�G���T�`�	��c�%�������=x���_������=�*� ��r.*A�Yoެoo�_���yx_�t�yY$��|^ўKY�X�l	k�t�f��=*�/��˼�=���$!(>	k��6����;,��i���iE��S�xڪ�5~�םC�&�8yw�S5��&-�`���Wyu���o�̛�+��j��ӿV���??��>�%�͏Wٞ$�D.E���g�kں7ICPq���s��D*NK[�A*nNX��5��I�/����Y��E��Y�'a{���^1�z��p��+-v]}��7�Z��g�6B�6��Z���"����_��~���7��|'���7��ٝ��_�M���뫧����C��J����F?�8 �t�������z��qk"DE�ǭɉڜ`�	��	��0{'�ڤ��r1W'H�btB���N��"_)��TU��EqB�NH:� 섙;!�EeSC�M
�!E#��F�l���v�{Z#��y���KIZ�R�f�F��o�r�-�P���Xt!f#��ޢ��1�Z2BL1�D#�N#$l��!�,ǒl��b�FP�FH�37��,Ǌl��b@#@�d�F����1�k��y�.ǝpY2\����`�̖%�-�Ȗ�N�,�-����e2Z��#Z���r|�F�����(�n�T8F�h�yz|G�r減3'l���b�R�-�9�H��nꜲ-fn��3J]����n�t�ɠeĶ��-&�/u�"!��<�D�餓HK����-��6uق���ȧ�N>-%�b��r'dL���ȶ@Z�t�j��3���m'�lA��R�`d�I7����m�|��	a��@��t�lͶ��-���t��G�r��Ƶ��Zw����b�3�kG�mq���_xB?2�^���`��ˣ�6[����r�����g��'>�e��}_Ei%�Y&F�����oҪ����r�����peky<c�ER���=��&��yV�gGz��hB��I���f���	l�Y��ф�^XA9��`EER�����ha^F�v4!���MH��"��PԌ�p4��0+#�;��ҋ'(GR��HkU5#4M`#���R8)�\�r4!�:��V'Q�e�S�l�Y��ф�~���	)�I��:�z�m1s[x?�����p4!�:��V'Q�(�-fn�GRr��GR��Hku���b��]'���$F8��b�D�Y'�t4�m1+[x?���� �p4!E>�v�馣	l�y��{�M��cMH�V�����h�bV��~4!%C�1�&�Ȯ�nv�p4�m1+[x?���6�hB~&�XzE�$��h�b^��r��x?��}
    ��@���/_�83ī����~��}�� ���q�r��G��_�z|��)=*�˻����|����2��2��&R���o�َ���mib��>|��O��j�}z������f��tA�]X��H��4�^UU����o���/7�o72�f�no������f�Л�Û���.{҈|`�2��Df�$^&��WwKD�R۬#�nﴚ����v�G�'w7�!��e�n��B��]�qT(��Y��k؏
�q����$�|����Л����,>�����8�=m_�}��M��d�ݾ��U6�.SR�J�z.�>zN/O~.���t�_����oA�ꕞ��
��Z�x���l�2cvs{���i]#���|��|��(�V���{�0�F���^�{Xm��^���&��f��eҾ%m��X��K_����v�(�����7�0_�:K^�&q�A'�v'�wiN��r�&T��&W�tiN~u�2�rI4N��ާ¢ջq�h����S��1z4n��?WoV�<q�=�A���
��zЦ�K�NZ�[�O�6S������S���)<�_%.]��Y|����s��"����=�쒠]�6�p^ef�1'O��j�������L���9�5/0�K���c���.�J���.�Z�u�����m�6�0�&��;���=��R�x�)5Cd��J��.	=s���A�,�97ο�_�'vM�Q�@�Pœ�
Dt|��T/�T�:tSi�k��@�,�97ի��7�\��D��-��,q����b�ը?>5�(�+���}�I�"佢�{K��L���c���6|�`G��N�/`���`sgfc�xi�ES�70�M*���7X� �j������=��.�4��֣�g�6ͤ9��E	�9��Ü^�92X~ ����=،|cNs�ݾQ�L �5�kZ]S�t���$��r �Tp����b�$ �8�S������ �`��6��/��ޭ�߰o.��M,#�>���-�խ5��$��%_ݿ�������m��G��콸�R���Ҽ����� ��/W������r\��V���Be�b���Q�[�w$lԿX�d�ڝ9ڰv�E"C���I����Pð��W���G>�qq^�x	CW�d���ӿ�EsD/��5��O�L�$V���$p4M}�Ĳ�PQ�"�ø4/f���02����������٭�v0�z�J��/v��k�ة����^k��������h�j)��J���cz���~�֔Gu��J�D.��Y/�ع���s��n@۲8��OsѢW:�ٯݘR�)��W)N�@QL�޽,90Qy��c�4s��Du90�����`�j��L���C�.~���~������?>�
�5T+�����CO�B�X�;�I����
���߭�m>pb���Ԗ��$e��O��e�L���/�*/1��R�P���ӓi2���d���p o�.́j���e��yj`��	��+�v�
CV�E	�^���ĺ-Y����a�����Ks'�xЃ����I9evҭML������t��*��`�^	vp!����B9܅��B��ב�]X�3�̰�@��.��2Y//�a}��t����-G����hx/_�L{��l�/Me-q��eL;��UoN	��˷z�X�/�i�Ef�^dv�H^/̑*A�:����ҭԬzoJ� )�Pq2?*,6S�b��mެ���b,�e�2���Re���,(�n9��,��)�T%SZPX��Ea�e�(��}�ŭbʆ���71�D�.k&֦ �L9��nK���^<&>v�I�.,6Q�b��y7yi>�kQ�tfs��f>m�V�Җw����P��]��^Չ�ޥ|��2=
��j��O/��j5x��d&�ůݦ"��ތ�h��4ɰ	�T_թ��Ky%�4�J��ڦ.�����lC�j;�M���T�Si R���6T�	|�t_���O����v�^/��Y|X߬�o>c�^�W�2�c���-�-��-{㦝�u�� ��	��nL���iA�5��z�[S*?]��V��:��i��j˻ڋ�`&�~��l�`�
Y�Ȏ�*:����(�oܰ���b����:�/����]���R����=CӮ�aM��Cc�щ���S)�Ӓ���8��!��C��Q٢�g�h)��ϓ���H�����J7�_�i�_������8o�	X ����yl�-|i��R,�S�q���B�9F�g��M�.�mI�y�zɥɣ��K�^�P2)���Y�:�c}�[�ќz�8�nN���t�g����^t��4[`�v4PoG�����.͟٦p���H;��PEL�2��4M���i�yg��K$'�&VA�zh�P��^�GU�]�@�F�to�T��|�V,T�9��ũ�ڕ���X#���y7{iN�3u�e���D3���Nt��Q�9E��߂�+=���u@_?|����8
�gtr�=���@�+�?�u2�ɴdY>���S� ,��z���o���ǈ/p�JϨȶQ�{���R�y����)��kT�:O��L�Da��kn
'��Ҝh�����xp�z�xJ[��4�~�/kw���l��&�(��@�T��6�1�܈��\
���gZ!#�(�1m��rcWL3`fE�r&�!V�@���C^-/͇z���ض��L��ZNڙ
�
pj7�4���*�W�,��5��Xt��E7��P1/֪*��ͨz�B��6��S9�JK�A�9Cy��D��B]/�95���f,�8�6�0� UunL��	��Zu4�e����S���i� h,���r�_n�7���-��gA޷����#�:2��5 �n1mm�k���mi͘Nr�_c5��WàA�$��,
����v��^:ѩfw3J�7�jkǍ��%/�^��M��M��h��(=ϭN����kD�K��ڂX��.�|�|�����잱��/x��=�bUv��0 D�\E(�Ѯ�0��.�\��.d�"�E2�^$Svo$���r"����_���Yq���ΒQ��Gg����"�y��q�g�����R�o3��:�e?�S��x6�T�_�^�~�r���2���Du��Bp|��ǝL�,~©��?,>�e�2=�4H&��Y��t��������i?�}R��p�G|�:�ޏ�d7pa�J�B����;3�N'��Q����6�^�e���:���i�����ۗQ��T=L5p;Ֆ>��Y���Y&�Qyc��t/�m!)%u���l���q�b%�nktX�_3c����{��ҽ��״�~��l�r\S�h����Vh�����nJ�4��II�iui�:�f79A��z�_w{fw=u��Gt��S'=_|�j!�����ǟ��Us�����?����@��4m�7q�?�9��E'���',�R$L�Z&�.�N]vv�l�١s���\�d5���:2�����c���3NjG�vH�i�9eS�)���fd�����Ĥv�1v�m��z���|��7�q�D��Dl$�s�ר"=��1��mQ{c���bġ�1��-�`o��^�8�x#Ax�����c��`+������6����$�D�U!�(_��GJ���z�p�YvRgم�%k�b�n�i]��u3���xoR?�[h]��/F��V0�T�W�I���8zǼiRϛz�����T{��S�0�ލ_�M��B��~1z�z�����;�7�z~�лa�_��k}eϨw3�������1��~L�?�ֿ�o��`���
���1Q�{v]���uv�1����:�C66�*N
aWSt'�������m�n��}Y-��v�n���}Κ�'C�N6m�j��:�0Ta;1b��ԩ�q� T�62�:�z���Q��8Yrp��}��>��W'�MT�m�w�m���j��Yt�q�{�X������#���5����u�42��D�֐��XyGc�l�LjN���1v�;��;�/u1��C�72-&Q���6�j�x���a�}Ͼ�}z�E��P��抢Q�#�T��l����UrKT?h����7x埫7�z7�    �.N) �>!��R�н�: 9nҚ}�X����R��EU�����}�����[!T+���nPH\��
��A�V�\T�
����Z!E+�mV���a��d�%!���}�?2�� �/	I����ѵ�Gׯ��Z�u�����m%5�N8�z�k�lU���ڻj��9D��h����%�&9���'� At�ht���_�'���� ��TD.����7x:]��Vh����,|�������f��q�����U���YgS	��п'өD)m}�w�����gt��B(�82���<��c�V���:�.{���q����&`PȜ����xlu�$wѵ�O���;�h>��>�_�>��=������<���N�����a��n�jߴk�79A�:�acs��^ Tl��Lп� |�rP�*>TLH���&
|0 o.B����W�;ϖ@�W/�A���~d����������ŷۻ��6A(�CbY�:ͥD�1-�)�P��j'B��TK^�IXgT=q�I�2?9�Q�"fр�����r�������`�����^S�%t�6�ӎ��ʱ�Z�Y̩t�vo��݁"�Qe������>4��%Z�h�s�W������w�@��������I�J�yDCD�d��ҭp�zc�իz����2g�85�1�l��e_�g���<�*S�%j>L�����Wz�ؿ	m�4=�v���a�n6�^��C/���w�^��r�XƽB���J,�V���/�yJ��)�]�+W�2�s��QH�e�����WP��g8�u+�L�|��Q@�O��RD\��Ŝ(��&,����߭�m>p����X=.?c{,XJ/u�?itTg#M������])�T���O��H�Q܄%�^�P��ק�ܤ�r�������I��g5W�r����7�0W�V�҃�W<�װ�A�K�X����u+(�A��;N������I(���%�{�"�^��"YQ�LLV�"Y!ie��(d����)^������)1���S�k0ʞ��S��/<U��&O	���6C�k3~X��o?��su�QV`��T�0W�L��Wc�U�<�vе #եd`Ҝ_o/��8��Ð�:�w����e:4����ҁQפNs�˨ݧ"�ލR
�%��u
k4T�F��w�7k�3��V,�d����覆�.Q�m�Z�1P:m�%��f�P���vk ���(��;j^t�ب�D��Ym����?G�8���})�}���q�zsYJW���;
Q��������/@W�e4C�`	'�A�,ߨ�1	9���z�J��{Q��u��$n�W�:�:qOA9.�L����2-]�T��h�l_�F����oS)ش�E��A,�,x#x���c�������v���B��2�����B��3ZAWӞ�:��b.'dU�1�r����u�4�Q��JՉ�O�?V[�-�f(Kmz�!,��PݫU5�1�_�>k�j%'RU�%��W�d���$
�[���7"*UGT%q��̤�g��R�o�Z���?�X�D.��v�9A���*e9NoI)�a���X��T+]�K�)�ހl���'lܷ�z�R�V#5�JZoP@w�P�}�vԸz�
V�O1��z�b��dJ�hJ@�uȵ7�!���˚�R��L�jX�}@]Ӫ�q�Ӌ����t6�v���q�Rx�a��aML�+�k�z���u��m��}Ⱦ.�
�|�ڳ6s�8�գ'�tS��a���~�5�f��^��<��#�����9�j�������k�Ӂ�Q���Z��v��~�����q����|��]���e<,X�h(=��5��|$8��oF��{R��=��Ҡ�"UY��wMU�]A��j�<���^T�޷U�F�������7{b\;�Ҟ�rJ[�as�FbA�k�1�U��\}/�@�����Fp�=�n��;T8�z
�U/��aΩE,��z����6�ܧ�w�|��|��4N�i�� ����S�d�B~�q�JX��R'N߅���K�c)Il=���x�Rw%%�5�����:55�p�^֮��|��;u���OP�*<����<�ڰ�|jٻ���0\G6­:�z�
�57|���Z"��9g#�p
�S����]y�>4��ϭSuwb���2�vq[�v��Ҩ�(C,���^�(�F���z-T�S���ض�4{J>���f����P<�v��z�
�U�F�Ku�jVjRC�F��� ��ڂm���!�C����c�γ)�݋0��q���RM=���43�R��u�r����ooyg��`xg]�Y7���?�S�d�nx���n�V����FP�(�5Ra]��h6FÁ�MW��-�z��� `:W�A`�ĎjP:B��`$� ��u܋��_Pցe4t��C�*��g"�&ջR:��<S��vB���l��O��u�� o57�x��t�R��� n�%\YoTb��j�M3 b_]Ǿe�~쒌[:�Ҥ678��?qC\=>Xs�@�pK ��uJ{��.�Ɩ� K$�n�>�쑜gӟX �u��鞸B4��hI�,����N۫RU�P����E�իjpAB��+�NW~xʂ����ۛ��0����mH�-۬��H[.�CO�s���tH�ی��ݸc0^�=Gw��Ba����#��NL�z���^-�^<{����g��vO�|��>=�s�i�v�y��� {z�)R��V5�"u���}�aɲ�hgڈ@�e%�w�f�g�N��褹�aq:)�^fϻHd{5�{���}���bLZ�z�jg�&�|t��&5�c��d5�	0qeꉫ�	���M�t�p'5�c�
M�ē� SU���ڙ f\�	�W8&���"��L�`����}�������?���B��&�:��k%&�*뱗�m�d�8�2B�k]>�yl`� ׼l�ɨ���z�ӫ��;taw�`��5f��~��g��~�����Y�Xr��Kni�3;xioҖ#Iی,m,pM����K;tiWٞS�j$q'�oJ0��s�������M��S�Ƒ�����I=�^�[��C�7x��I�0��1e��S���c�w�򎫕@�w<���htyc%[R�d+䝰�C���(�d$y����6�z��B�)�;ty��NG��[�)����r0���C�wu����F#�;]��sR�a����>�d��w	�܉ċ�Џ���e�l'���p'x�wV�L&r9����GƓZ�`������ո��%��'�p��'x�w7B�J�0���%��'����'t�WZۜS�zT��}mF�8��H��$P�%�Ľ��f\��\J�"�L-HS0�^��j	�x\��\R�"�L�X�?�ֿ�o�����TN�E`����m�L�k��9���h	��&*�����v�4�Lw/ M������6�-���o�n�m����5O��AN*N��Y{Sr\,�4u�i�66ʩ]��o��'�ɨ@W�ˣ�~��j�|�h��z�~��ma�췙��?@߲w�޻�4�
T���^�~mu�m�DL;;�>mCF����1S].���(�L ��Z4)Q�ҢIɚF����M:%Ԥ�I��TM*�d(��<?�&	jR��$�&��I`M��IM�EѤ#�AMB/MjԤ�hR�&��$�!E���5�{iҠ&�E��5�&�_��EP���&c�dl�d̚F��bG����{i2AM&M&��P4���8	U�IM
�O
k~����Rx[�=A�+C)0C)lJ�)�pT�m���蕣�����$e0���-������������E��>�Q����W�R`�R�Ҕ�����[�R�Ӕ�W�R`�R�������Ǟ"Jr�R�JT
LT
[�Rp�2Q��tȉJ�+S)0S)l�J���PD�=�s2Q�3��_�2EQ�6Q�,�@Di�:)Y�iQʢ�R��RK�(C��@GF�Zʨ�(�HԑuB���H2ӑ���D�#�U��t���@Gҫ�{!�HGڐ�d��(�[�#�DG�":����D'Q*o��$ً�H$:�Ft$�`D�/�!ً�H$:�Ft$�PD)�:d�#{�DGڈ�d��(�:d�#{�DGڈ�d��(��@�Ltd/�#��HёLtB��8�td/    ���(�QtBѤ�0G�y���s�e�9�yN ��'I2�Q�h�B��l4G1�	D��VnEf9��Q�r�����@$�/�Q�B�P�B��l(G1�	D��RA�LrT/����(�QLrBѤ���"���(9�r��@4�.*2�Q�8�B��lG1�	E��b2�Q�0�B��lG1�	D������^G!�Q6�����Iu��LqT/�Hq�Fq�)N(��� ��@/�Hq�Fq�)N ��wR�za@�6��qBѤ��zq@�6��qѤ��@�8Ћ� r���`��&�5i�$�^�」� s�P4�/�!s��q 9�80�	D������@/��q��q�9N(���9��8�l���I����r��9`9� 'Q�k�d��H�F��m$G3�	F���MF9��шr��hF9��Rz�s4���^,G#��6����#Jo��&���h�9�s4ÜPD�o�&�݋�h�9�Fs4ӜPD�o8�&���h�9�:ٛqN0����'{��9y����<'Q�7��@G�:����@'Q�t�DG�":����D'Q����^DG#��6����"��_�C&:��1Ht���&:���[�c�D��!:**�N��2\�5�&_�A�"�ojҦ��`G,>�n���R�D�Z��B�Q��ky�BɔGQ�B�Z��BCQ��!P�B�؆(P��c<��P:}�K���<C�Q�V
�
F��'ܻJ�ACjP�6$dX��(tzN٥P22C�Bm|(f��P��C��Bm�(a������JfF����P9JY��(t�b�.��R:@���H�KK�>b�#Qߡ� �$�(R%a�J�������׺4J�JC��@�$l\I0X
G���%AKbYH���,	FK�ht�~	]%�%1�-	dK�ƖåP4:}��.��ْ��%a�K��R0�1��B��%a�K��R(���a�D�tI�K��%�|)�z���xI�K����%��)�N�C�K�d�$� &��I� �`��D�=�%Q2`C�D�$m�I2a
F���%ILr`���0IL�Ht�AW]%�%9�/I�K�zn��R0�.I���!xI"^�6�$/�"��ǪvI�L���$�.I]�L�B���Ө�$J�Kr]�H���.I�K�H�{�D�Kr]�H���.I�K�HTz��tI�K钴�%�t)�z��tI�K钴�%�t)�
���.�!tI"]�6�$�.�"Q��.�!pI!\R6��.��P���"�%5�-)dK�Ɩ��@�]�d����%�dI�Ȓb��@}��̕����+)kC<�J��{������`%�XIٰ�b��B�'��*�!TI!UR6���*��P�{E�JjTR��*)�J�(�;�Td���0%�LI٘�b��B�GJd��� %�HIِ�b��B��)2QRC��B��lDI1Q
D�ޫ��(�!D	�(��(�P�;R2Q�!D	�(��(�@��<��AJ�H	lH	)��Pߑ��aJ�L	lL	�)�P��̔`SdJ`��L)�zo��KC� SSfJ�(�{�DfJ0�)2%�1%`��B�7j2S�!L	�)��)3�P�=R"3% �ؘ0S
D��{�*�������R(�>z�T	�P%�TIۨ�f��D}K������+iVҌ�B���A`�̕����+iW�̕����pI����4�%mK��R(�>�V�ɒB�4�%m#K��R(�>�[�ђ��4�%mCK��R0�.�ْ4�%mcK��R(���%2\�C��F��mpI3\
F���%2]�C�F��mtI3]
E��{�D�Kz]�H���.i�K�H4�.��B��%c�K��R0�.2]2�D]�_�J�OFս�j�k*��}+���_<lVon�����u~��$��}�O��Q&O�L���?Z&����*i�8� qK�/Π�qCD�R�"��Ϳ~�&�Em����*�:U�d��E��o>ZUOF]r�+T}����^��g����V��{���z@�W�ک�U?�O��kU=���8�ר�*�;U�f��E��s�V���8�7��*�;U�a��D���VՓ��G�1���OU���z�,�D��>A�W��V�LT?}Ih���p3G�)��J=OU���g���k�[UO��(�H�_Z)UĲ��콅���`E4��Ί:�xv.����k���xv>+��
;�hg�{o!� Z1�Hh���
F�s���maZuOF�bF+��
;�ig���v�ʞ�h�8�V �vH+���E���Z2��PZ��V�)�`L;�O��U�dJ+���1��cZ��v.��Ӓ1���
���i�ڙ�~����'sZ1�j��
&�3����zZeO�bR+��J;��Lj�"{o!�$�Z9��j��J�3����-[eO�rN+��ʎs��i�"{o!�����JĴҎi%cڙ�~���'SZ9��Hi���J��3����J2���PZ��V�)�dJ;��iɔV�Ci%RZi���)�Ld/���dJ+ǡ�)��SZɔv.��Ғ)���J���Ni%Sڙ�^�iɔV�Ci%RZi���)�Ld�/�%CZ9�Ui��*��3Q���V����*d���h3�y�ޟ�ɄV�ChZe'��	�<D�m��|V��g�Y�����<D�/�U�>���Y�xV��b<;��K\*2�U��Y�tV��b:;�{�T�g�8pV!�Uv8���C��J�ͪqجB6��lV1�����E�d4��A�
Ѭ��Y�hv��Wl��dV�Cf�Ye'����<T��d�"�Y5�$�`'��dv&������8d�̂����y��ߙq �Y��Y��Y`4;�{�f��fa6�f��f���<T���,��f�,t�e6;��k����Y@6v6�fg�z�,���8l�͂����y��_So �Y���Y��Y`6;���f�l�a��l�l���C��� ��8p΂��ٙ���x6 �Y��j���Ng5�ٹ��[@��xV��g5�Ymǳ���Ld�o��&�Y=���g���j�s����V���j��h5ڙ�^yi5���q�FB��V3�����[H�ɈV��h5"ZmG���\d�/�%3Z=���h���jf�3���Ғ!��j���i5Cڹ��_HK��zJ���j;��Lig"{�/�%SZ=��Hi���j��3�}�/�%SZ=�5Hi�����s����֐)���ꨠ��K���+V�T���QtxS��uD��b��v���nH�@�<Z��\<0��������z@�:��f���.Л ��@t�e����9�<@?v;�4z������W��wT����L<0}uC�ȴ׌�=`g�1{`.���o<�� '쁙x`���.�9p2�R��쁙x`��,] C�tL��/��,b����bAF�"�H�E)fT<L���tT<*+Ȋ���ųq���X�a�����N��⹸`�V]. �b1*/ȋ���3q����L@��bT`,;0L��b�1�Q��@b,��X02��	��Y�e21�"c��Xؑ�`f<x����X�ʌ2cagƂ��LL0���.�������S㙘`�!u]& Cc1*5�H���K��s1���X���K����%C㙘`���]& 3c9*3�Ȍe��bf�s1���X�����%"ciGƒ��LL �cI&�rTb,�K;1�L�gb�;0�db,G%����c��x.&�����K$��N�%㙘@z���X�J�%ci'ƒ��\L�=0&c9*1�H���K&�31������K$��N�%㙘�{\L�rT`�+;0V�g��a�"�b5*/Vȋ��+�����w�i��+���N���yX��NH�Y��+dŪ�5��yX�{D�轨GE�
Q���bŨx�UdR�F%�
I���bŤx&����QA�BP��X1(���K(2'V�rb��X�9�bN<x��ɘX���bbe�Ċ1�<<�|Z�)� �  �+���N�S�yx��9E��jTJH��N��)�L<�;&2%�Q)1 %;%��������@��0*&��`����x&��è����s�yx�{�- sb�rb�Z̜x��t�3�G�Ā������cb2'�Q91 ';'������6�@��0*'��`����x&��91�ʉ91�910'���Of2(�QA1 (;(�31��!}@&�0*)�H���k&�s1��X�Q�kD�ڎ�5�♘���nMf�zTV��k;+�̊�b߁�&�b=*,���k��31��k2-֣�b��X�i�fZ<���X�q�k��ڎ�5�⹘�{`L��zT^��k;/�̋gb�=0&c=*0���k�s1����L����X#1�vb�����{`L&�zTb��k;1�L�gb��{`L&�zTbl�;16L��b߁�!c3&16QA��e$p2������?��S����x�׸��TڨF�罹[�lBP�	K�/� ���|EI���>�z|�p�M�N%�TZt*Y���t�}G�N�C���T�N�E��u�N�[uJo�<\��:�N�u�N����~v�N5�T[t�Y���tr�ҪS:|�S�:5��i`:�������p�ƨ�آӘu�N��Qd��i�:M,:MX���t�*�V��)[2\�)�4��4e���������:��_Z��54�z�V�h�R�H	+�b$�R�?�۪T:�Τ2)acR��TpJ�L	2�é�@*%lTJ0�
M��w�iU*K��\J �6.%L���{��
�̥�p0%L	�L�B��x���p2%�L	�����][�J&Sb8����M	fS�	�_4EFSb8�Ȧ��M	�S�	u�y�B%�)1N	�S��ө��:��V���N�$�)i�S��ThB�LI2����D8%mpJ2�
L�ӏm*�M��lJ"����R̦B��`J��KGSє��)�h*0���`J�ɔN�$�)i#S��T`BUނ)I&Sr8��H���LI&S�	�_0E&Sr8��H���LI&S�	U���dJ'Sɔ��)�d*4����dJ'Sɔ��)�d*0�
��L��dJ"��62%�L&T�L��`J!�R60�L�So��"s)5�K)�R�ƥs��t�O�d*��S)�TJ٨�b*�L����̤�p&��I)k?fRa��_��=��#)�HJِ�b$�N����H��DJ!�R6"��H�Soy~ERj8�R��H)Ra��8Ud���(�<J�x�b�N��Qd���(�8J�p�b�N���)2�R�i�B�l4J1�
K��j��F��4
�F��FӨ�t�-�2���4
�F��FӨ�t��4�q�Q�8
l8
G�Soq�y�Q�<
l<
�G��S�&�̣`8��Q`*�<*,��k���R�y ���Q���_E�Q0�G�(��(`�N���2���<
�G��G��t�/�"�(Σ y�x0�
K���H�p �����T`B�7X�D
�)�DJۈ�f"�P��R����p$�Ii�Ҍ����g�̤�p&��Ii��̤B��`J����4B)m�R��T`B�7�W���N�4R)m�R��T`B�7�\�����4b)m�R��ThB�L���Υ4r)m�R��T`B���)2�����F0�m`J3�
M���)2���ɔF2�mdJ3�
L��_0E&Sz8��H���Li&S�	5�L�ɔN��)c#S��ThB�L2�2�ɔA2e���W���U��6w������z�����ۛn��]2�:D
6�ʨ[��{�����~~��������_�������캯��i��)s�rs��a�����e,>�#����,>�T��P�#�2h��S�_�2�,��Y|Xg�����X�����?�n�������)� ��ܤ�BԎ�\dW��>m�Q}̮��jt�oY���ߧ���N��|�ݫ��׋go�bI?�������O����c��UI�(5��"��bUg�L� V�
�4�������}Su���O������,3�G�D����틷��#q0�a�y͚�4�Ӓ�T�k��դ�Gxa��N�5a�'��j�P5��j>E�����W����!/�P�+"[��	�<^,>�n��ߓ#�3�n����Y}i�jZ&������j1�:�gud}V�:�G���GuDT;>��H�j���Y���vr.إZ��yg�*T�u��60�N_vѥZ��g����f�U�j��j�R-�ݒ�j5��Z�ΪM��w��^��Z�����Vm`���LF�j���Y�1��V��jCS��h�\�;�6A�ڊ�Vm`���Dq�jɵ���jST��">e����6t��\���VDH�m��"bن&[�� �ɋ�Y����3��v��x]�%��L�a#�QCh����h�nɨA8���A�X�`��n����%[2kΰA l6� �6�&[�[2lδA m6� 7&��'�tɖL�3n��7����{LF�7�����d;�\�.ْy�p�����!0�N?��K�d� ���D� m�A2qM��C2I�8H<�#m�q$��	L��wH&��q��y��LZ��0'M��C2I?���$b2i�d�1Y`��!�$S2�L�$R2i�d�)Y`�U�C2I�dҙ�I�d�F�$S��d�=$#S2�L�$R2i�d�)Y`���C22%�ΔL"%�6J&���&[�!��IgJ&��I%�L������)�t�d)��Q2ɔ,0�z��ȐL:C2��L� �bH�j}d��Ȕ3#S�Ȕ��)fda�ֻhɄL92��L��bB�h}���)g>���)k�:�ca��{,�����B<�lxL1K��_�Lǔ3SHǔ��)�c���7ePd8���B8�lpL1K�ޑ�"�1����1ecc��X`����јrFc
ј��1�h,,�z/VTd2��ɘB2�ldL1K��+���)g2H��Fƀ�X`������3$c`#c�d,,�z?�d4�h������T�;2g6����ƀ�XX�����l�� �0'fca��{�$��rrfc�lll���Z�����3dc`cc�l,,�zo

d6�l��������T�=#�1pfc�lll����Z�������1��1`8�l��2g:���i�L�B���L��v�c��1�x,0�zB��|L;�1�|L���f>�l}�d�ȴ3 �ȴ�id����|]M&dڙ�i$d�F�4��d�}��&#2��4"2mCd�Yh�����vfd��12͌,0�j�!�igH��i$��B�����Lɴ3%�Hɴ��i�d���x�ȔL;S2��L�(�fJ�lc�!��igJf��%3L�B���̐)�q�d)�i�d?\-��̚u����������a���a����M�f_�]��:46�ʨ[��.�B��뿽����u����m~3�g~��.u�2�����>�������Y|�G����Y|�����b���i�?d�heW_��Cz>+����zx̮��(�B�y���S���.)��Q�I;�.R����cv{Ww뷙��o����<��_{����O�#i�������v��������2��ų7������gh��Z8����w\���i����w�\nG+5�>��M������ww�F�K�ktU�g<}���!�\u�R������,�M�i�F�`.��SO��j��V/������������響������?��߿�߯���]������+��o�k�o��o�QԚe     