\header{
  title = "12 Bar Blues"
  tagline = "" % removed
}

Blues = \relative c, {
  \tempo 4 = 120
  \clef "bass"
  f4 a c d
  ees d c a
  f4 a c d
  ees d c b

  bes d f g
  aes g f d
  f, a c d
  ees d c a

  c e g e
  bes d f d
  f, a c d
  ees d c a
  \bar "|."
}

\score {
  \new Staff {
    \key f \major
    \transpose f f \Blues
  }
}

\score {
  \new Staff {
    \Blues
  }
  \midi { }
}


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
