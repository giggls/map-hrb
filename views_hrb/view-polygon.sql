CREATE OR REPLACE VIEW view_osmhrb_polygon AS
SELECT
  osm_id,
  access,
  "addr:housename",
  "addr:housenumber",
  "addr:interpolation",
  admin_level,
  aerialway,
  aeroway,
  amenity,
  barrier,
  bicycle,
  boundary,
  bridge,
  building,
  construction,
  covered,
  foot,
  highway,
  historic,
  horse,
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
  route,
  service,
  shop,
  surface,
  tourism,
  tracktype,
  tunnel,
  water,
  waterway,
  way_area,
  z_order,
  tags,
  way
FROM planet_osm_polygon;

GRANT select ON view_osmhrb_polygon TO public;
