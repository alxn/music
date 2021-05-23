%{
%}
\header{
  title = "Gruppetto exercise"
  composer = "Ryan Black"
  tagline = "" % removed
  instrument = "Tenor Trombone"
}

music = {
  \relative c {
    \tempo 4 = 72
    \clef "bass" \key c \major \time 4/4
    g'16 fis g c,
    g' fis g d
    g fis g e
    g fis g f
    g fis g g
    g fis g a
    g fis g b
    g fis g c
    \bar "|."
  }
}

\score {
  \new Staff {
    \set Staff.instrumentName = #"C"
    \key c \major \transpose c c \music
  }
  \layout {
    indent = #0
  }
}

\score {
  \new Staff {
    \set Staff.instrumentName = #"F"
    \key f \major \transpose c f, \music
  }
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
