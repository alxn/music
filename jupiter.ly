\header {
  title = "Jupiter"
  subtitle = "from The Planets"
  tagline = "" % removed 
  composer = "Holst"
}

\score {
  \relative c {
    \tempo "Andante maestoso" 4 = 80
    \clef "bass" \key ees \major \time 3/4
    \partial 4
    g8 (bes)
    c4 c8 (ees) d8. (bes16)
    ees8 (f) ees4 d
    c8 (d) c4 bes
    g2 g8 (bes)
    c4 c8 (ees) d8. (bes16)
    ees8 (f) g4 g4
    g8 (f) ees4 f
    ees2 bes'8 (g)
    f4 f ees8 (g)
    f4 bes, bes'8 (g)
    f4 f g8 (bes)
    c2 c8 (d)
    ees4 d c
    bes ees g,
    f8 ees f4 g
    bes2 g8 (bes)
    c4 c8 (ees) d8. (bes16)
    ees8 (f) ees4 d
    c8 (d) c4 bes
    g2 g8 (bes)
    c4 c8 (ees) d8. (bes16)
    ees8 (f) g4 g
    g8 (f) ees4 f
    ees2.
  }
  \layout { }
  \midi { }
}

\version "2.18.2"
