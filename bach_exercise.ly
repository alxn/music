%{
%}
\header{
  title = "Bach exercise"
  composer = "Ryan Black"
  tagline = "" % removed
  instrument = "Tenor Trombone"
}

music = {
  \relative {
    \tempo 4 = 72
    \clef "bass" \key bes \major \time 4/4
    \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" }
    bes,16 c d bes
    c d ees c
    d ees f d
    ees f g ees
    f g a f
    g a bes g
    a bes c a
    bes c d bes
    c d ees c
    d ees f d
    ees f g ees
    f4~
    f r2.
    \bar "||"

    \break

    f16 ees d f
    ees d c ees
    d c bes d
    c bes a c
    bes a g bes
    a g f a
    g f ees g
    f ees d f
    ees d c ees
    d c bes d
    c bes a c
    bes4~
    bes r2.
    \bar "|."
  }
}

\score {
  \relative {
    \clef "bass" \key bes \major \time 4/4
    bes,16 c d bes
    bes16 (c) d bes
    bes16 c (d) bes
    bes16 c d (bes)
    bes16 (c d bes)
  }
  \header {
    piece = "Practice."
  }
  \layout { }
}
\score {
  \unfoldRepeats
  \music
  \layout {
    indent = #0
  }
}
\score {
  \unfoldRepeats
  \music
  \midi { }
}

\version "2.18.2"
