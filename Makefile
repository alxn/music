LILYPOND := lilypond

.PHONY: all

all: Welcome-to-LilyPond-MacOS.pdf rhyfelgyrch_capten_morgan.pdf andante_and_rondo.pdf star_spangled_banner.pdf

%.pdf : %.ly
	$(LILYPOND) $^
