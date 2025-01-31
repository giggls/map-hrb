#!/bin/sh


if ! [ $# -eq 1 ]; then
  echo "usage: $0 path/to/osm.xml"
  exit 1
fi

dir=$(dirname "$1")

sed -e 's/planet_osm_/view_osmhrb_/g' $1 > "$dir/osm-hrb.xml"
