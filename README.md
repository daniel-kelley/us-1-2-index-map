USGS quad index base map

* specs

Index map of the USGS/AMS 1:250,000 (250K, 1 by 2 degree) quad
coverage for the conterminous US with US state boundaries as the base.

The projection should be the standard Lower 48 Lambert Conformal Conic.

Linework (vector file format) would be preferable such that:

   - state boundary base layer using ball and chain 0.007" black; no fill
   - quad boundary layer using solid 0.005" or 0.003" black; no fill
   - top layer need to be transparent

Output should be:

   - editable pdf file format
   - 8.5" by 11" landscape orientation
   - map scale such that the map neatline (if used) will have 0.5"
     boundaries all around
   - map centered on page
   - no need for other map marginalia

License: MIT
https://spdx.org/licenses/MIT.html

* Dependencies

Generic Mapping Tools 6.x - https://docs.generic-mapping-tools.org

* Names

Names are extracted from

http://thor-f5.er.usgs.gov/ngtoc/metadata/misc/topomaps_all.zip

found via

https://www.usgs.gov/faqs/where-can-i-find-indexes-usgs-topographic-maps?qt-news_science_products=0#qt-news_science_products

* Files

gen.sh - 250K File generator

us.xyg - Clip polygon

name-250k.xyt - 250K Quad names

extract-name - map name extraction tool

gen-125k.sh - 125K File generator

name-125k.xyt - 125K Quad names

