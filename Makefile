LILYPOND := lilypond

.PHONY: all

all: Welcome-to-LilyPond-MacOS.pdf

%.pdf : %.ly
	$(LILYPOND) $^
