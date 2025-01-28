# A map with Sorbian placenames

Sorbian language is recognized as a second official language in 70 German
municipalities.

This repository contains a set of views for PostgreSQL and a script which
converts osm.xml from OSM-carto or osm-de.xml from OSM-carto German to a
version which uses Sorbian names on the rendered map.

To install do the following:

1. Apply views:
```
psql -f views_hrb/view-point.sql gis
psql -f views_hrb/view-line.sql gis
psql -f views_hrb/view-polygon.sql gis
psql -f views_hrb/view-roads.sql gis
```

2. Generate osm-hrb.xml from osm.xml or osm-de.xml

```
./gen-osm-hrb.sh path/to/osm-de.xml
```

3. Use the resulting osm-hrb.xml for rendering instead of osm.xml or osm-de.xml

