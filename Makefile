#
#  Makefile
#
#  Copyright (c) 2021 by Daniel Kelley
#

OUTPUT := us-1-2-index-base-map.pdf
OUTPUT += us-125k-index-base-map.pdf
OUTPUT += name-250k.xyt
OUTPUT += name-125k.xyt

.PHONY: all clean

all: $(OUTPUT)

us-1-2-index-base-map.pdf: gen.sh us.xyg name-250k.xyt
	./$< $@

us-125k-index-base-map.pdf: gen-125k.sh us.xyg name-125k.xyt
	./$< $@

topomaps_all.zip:
	wget http\://thor-f5.er.usgs.gov/ngtoc/metadata/misc/topomaps_all.zip

topomaps_all.csv: topomaps_all.zip
	unzip $<

name-250k.xyt: extract-name
	./$< --scale=250000 --integer --x-offset=0.5 --y-offset=0.5 > $@


name-125k.xyt: extract-name
	./$< --scale=125000 --x-offset=0.2 --y-offset=0.25 > $@

clean:
	-rm -f $(OUTPUT)
