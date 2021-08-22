#
#  Makefile
#
#  Copyright (c) 2021 by Daniel Kelley
#

OUTPUT := us-1-2-index-base-map.pdf

.PHONY: all clean

all: $(OUTPUT)

$(OUTPUT): gen.sh us.xyg
	./$< $@

clean:
	-rm -f $(OUTPUT)
