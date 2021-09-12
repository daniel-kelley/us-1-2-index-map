#!/bin/sh
#
# Generate base map
#

if [ $# -ne 1 ]
then
    echo $0 [output-file]
    exit 1
fi

name=`basename $1 .pdf`
# Lambert Conformal Conic
# See https://docs.generic-mapping-tools.org/6.2/cookbook/map-projections.html
proj=-Jl-100/35/33/42/1:20000000

# US lower 48. Larger than necessary because excess will get clipped
region=-R-126/-60/22/55

# area: large min to clip out various large bodies of water
area=-A5000/1/4

gmt begin $name
    gmt clip us.xyg $region $proj #-W1p,blue
    gmt basemap $region $proj -Bxg2d -Byg1d
    gmt coast $area $region $proj -N1/,,.- -N2/,,.- -N3/,,.- -W
    gmt pstext name-250k.xyt $region $proj -F'+f2p'
gmt end # show
