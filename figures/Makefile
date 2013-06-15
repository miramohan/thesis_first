
.PHONY : all

ALL_TIFF := $(wildcard *.tif)

ALL_PS := $(ALL_TIFF:.tif=.ps)

all: $(ALL_PS)

%.ps : %.tif
	tiff2ps $< -O $@
