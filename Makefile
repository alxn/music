LILYPOND := lilypond

.PHONY: all

all: Welcome-to-LilyPond-MacOS.pdf rhyfelgyrch_capten_morgan.pdf

%.pdf : %.ly
	$(LILYPOND) $^
