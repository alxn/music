\header{
  title = "Blues Scales"
  subtitle = "One Octave"
  tagline = "" % removed
  instrument = "Slide Tenor Trombone"
}

Blues = \relative c, {
  \key f \major
  \clef "bass"
  f4 a c d
  ees d c a
  f4 a c d
  ees d c b
  bes d f g
  aes g f d
  f a c d
  ees d c b
  c, e g e
  b d f d
  f, a c d
  ees d c a
  \bar "|."
}

\markup {
  \note #"4" #1 = "120"
}
\score {
  <<
    \new Staff {
      \set Staff.instrumentName = #"C"
      \Blues
    }
  >>
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #12
    \remove "System_start_delimiter_engraver"
  }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
