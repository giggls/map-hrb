CREATE OR REPLACE VIEW view_osmhrb_point AS
SELECT
  osm_id,
  access,
  "addr:housename",
  "addr:housenumber",
  admin_level,
  aerialway,
  aeroway,
  amenity,
  barrier,
  boundary,
  building,
  highway,
  historic,
  junction,
  landuse,
  layer,
  leisure,
  lock,
  man_made,
  military,
  COALESCE(tags->'name:hsb',tags->'name:dsb',name) as name,
  "natural",
  oneway,
  place,
  power,
  railway,
  ref,
  religion,
  shop,
  tourism,
  water,
  waterway,
  tags,
  way
FROM planet_osm_point;

GRANT select ON view_osmhrb_point TO public;

CREATE INDEX view_osmhrb_point_place ON planet_osm_point USING GIST (way) WHERE place IS NOT NULL AND COALESCE(tags->'name:hsb',tags->'name:dsb',name) IS NOT NULL;

