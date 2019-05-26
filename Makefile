LILYPOND := lilypond

.PHONY: all

all: Welcome-to-LilyPond-MacOS.pdf rhyfelgyrch_capten_morgan.pdf andante_and_rondo.pdf

%.pdf : %.ly
	$(LILYPOND) $^
