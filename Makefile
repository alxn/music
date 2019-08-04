LILYPOND := lilypond

.PHONY: all

all: Welcome-to-LilyPond-MacOS.pdf rhyfelgyrch_capten_morgan.pdf andante_and_rondo.pdf star_spangled_banner.pdf major_scales_and_arpeggios.pdf blues_scales.pdf jupiter.pdf

%.pdf : %.ly
	$(LILYPOND) $^
