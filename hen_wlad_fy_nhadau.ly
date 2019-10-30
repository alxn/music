\header{
  title = "Hen Wlad fy Nhadau"
  subtitle = "Lang of My Fathers"
  tagline = "" % removed lilypond
  composer = "James James"
  poet = "Evan James"
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

music = {
  \relative c' {
    \tempo "Maestoso" 4 = 80
    \key ees \major \time 3/4

    \partial 4
    ees4 \mf
    g f ees
    bes' aes g
    ees' ees c8 (d)
    ees2 c4
    bes g ees
    ees d ees
    g f f
    f2 g8 (aes)
    bes4 bes g8 (aes)
    bes4 bes c8 d
    ees4 ees c8 d
    ees2 c4
    bes g ees
    f8 g~ g4 f
    ees2.

    \repeat volta 2 {
      bes'2.
      ees2.
      bes4 (g) ees
      ees (d) ees
      f2 g8 (aes)
      bes2 g8 (aes)
      bes2 ees4
      ees2 c8 d
      ees2 c4
      bes g ees
      f8 g4. f4
      ees2.
    }
  }
}
\score {
  \music
  \layout { }
}
\score {
  \unfoldRepeats
  \music
  \midi { }
}

\version "2.18.2"
