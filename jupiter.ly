\header {
  title = "I Vow to Thee my Country"
  subtitle = "Thaxted"
  subsubtitle = "from Jupiter from The Planets"
  tagline = "" % removed 
  composer = "Gustav Theodore Holst"
  poet = "Sir Cecil Spring Rice"
 
}

verseOne = \lyricmode {
  I __ vow to_thee, my coun -- try, all earth -- ly_things a -- bove,
  En -- tire and whole_and per -- fect, the service of my love;
  The love that asks_no ques -- tions, the love that stands_the test,
  That lays upon the al -- tar the dear -- est and the best;
  The love that never fal -- ters, the love_that pays the price,
  The love that makes_un -- daun -- ted the final sa -- cri -- fice.
}

verseTwo = \lyricmode {
  And there's another coun -- try, I've heard of long a -- go,
  Most dear to_them that love her, most great to_them that know;
  We may not count_her ar -- mies, we may not see_her King;
  Her for -- tress is a_faith -- ful heart, her pride is suf -- fer -- ing;
  And soul_by soul_and silent -- ly her shining bounds in -- crease,
  And_her ways are_ways of_gen -- tle -- ness, and all_her paths are peace.
}

trombone = \relative c {
  \tempo "Andante maestoso" 4 = 80
  \clef "bass" \key ees \major \time 3/4
  \partial 4
  \set Staff.instrumentName = "Trombone"
  g8 \f (bes)
  c4 c8 (ees) d8. (bes16)
  ees8 (f) ees4 d
  c8 (d) c4 bes
  g2 \breathe g8 (bes)
  c4 c8 (ees) d8. (bes16)
  ees8 (f) g4 g4
  g8 (f) ees4 f
  ees2 \> \breathe bes'8 (g)
  f4 \! \mp f ees8 (g)
  f4 bes, bes'8 (g)
  f4 f g8 (bes)
  c2 \breathe c8 (d)
  ees4 d c
  bes ees g,
  f8 \< ees f4 g^"rit."
  bes2 g8 \! \ff (bes)
  c4 c8 (ees) d8. (bes16)
  ees8 (f) ees4 d
  c8 (d) c4 bes
  g2 \breathe g8 (bes)
  c4 c8 (ees) d8. (bes16)
  ees8 (f) g4 g
  g8 (f) ees4 f
  ees2 \bar "|."
}

upper = \relative c' {
  \tempo "Andante maestoso" 4 = 80
  \clef treble
  \key ees \major \time 3/4
  \partial 4
  r4
  c r d
  ees r bes
  c r bes
  g2 g4
  c r d
  ees r <bes g'>
  <c g'>8 f ees4 <c f>
  r \> <bes ees> bes'
  f \! \mp f ees
  f r <ees bes'>
  f r g
  c2 c4
  <c ees> <bes d> <aes c>
  <g bes> <ees ees'> <ees g>
  f \< f g
  <f bes>2 <ees g>8 \! \ff bes'
  c4 r d
  ees r bes
  c r bes
  g2 g4
  c r d
  ees r <bes g'>
  g ees' <aes, f'>
  <g ees'>2 \bar "|."
}

lower = \relative c {
  \clef bass
  \key ees \major \time 3/4
  \partial 4
  r4
  <aes ees'> r <bes f'>
  <g ees'> r <g ees'>
  <aes ees'> r <bes d>
  <c ees>2 <bes d>4
  <aes ees'> r <bes f>
  <g ees'> r ees8 g8
  <aes ees'>4 r <c aes'>
  r <ees g> <ees g,>
  <bes f'> r <c g'>
  <d bes'> r <ees g,>
  <bes f'> r <ees bes'>
  aes g <f aes>
  <c g'> <bes g'> <aes ees'>
  <g ees'> <f ees'> <ees ees'>
  <aes f'> <f' aes> <ees bes'>
  d c bes
  <aes ees'> r <bes f'>
  <g ees'> r <g ees'>
  <aes ees'> r <bes d>
  <c ees>2 <bes d>4
  <aes ees'> r <bes f'>
  <g ees'> r ees8 (g)
  <aes ees'>4 r <c aes>
  <ees g>2 \bar "|."
}

\bookpart {
  \score {
    <<
      \new Voice = "trombone" {
	\set Staff.midiInstrument = #"trombone"
	\trombone
      }
      \new Lyrics \lyricsto "trombone" {
	<<
	  { \verseOne }
	  \new Lyrics {
	    \set associatedVoice = "trombone"

	    { \verseTwo } 
	  }
	>>
      }
      \new PianoStaff \with {
	midiInstrument = "acoustic grand"
	instrumentName = #"Piano"
      } <<
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
      >>
    >>
    \layout { }
    \midi { }
  }
}

\bookpart {
  \score {
      \new Voice = "trom" {
	\trombone
      }
      \layout { }
      %{ \midi { } %}
  }
}

\bookpart {
  \score {
      \new PianoStaff \with {
	midiInstrument = "acoustic grand"
	instrumentName = #"Piano"
      } <<
	\new Staff = "upper" \upper
	\new Staff = "lower" \lower
      >>
      \layout { }
      %{ \midi { } %}
  }
}

\layout {
  \override Score.MetronomeMark.padding = #3
}


\version "2.18.2"
