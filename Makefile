LILYPOND := lilypond

.PHONY: all

all: Welcome-to-LilyPond-MacOS.pdf rhyfelgyrch_capten_morgan.pdf andante_and_rondo.pdf star_spangled_banner.pdf major_scales_and_arpeggios.pdf 12bar_blues.pdf jupiter.pdf hen_wlad_fy_nhadau.pdf intervals.pdf bach_exercise.pdf

%.pdf : %.ly
	$(LILYPOND) $^
