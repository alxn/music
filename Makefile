LILYPOND := ~/Applications/LilyPond.app/Contents/Resources/bin/lilypond

.PHONY: all

SOURCES := $(wildcard *.ly)
TARGETS := $(patsubst %.ly,%.pdf,$(SOURCES))

all: $(TARGETS)

%.pdf : %.ly
	$(LILYPOND) $^
