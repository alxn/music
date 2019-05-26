%{
%}
\paper {
  #(set-paper-size "letter")
}

\header{
  title = "Major Scales and Arpeggios"
  subtitle = "One Octave"
}

\score {
  \new Staff \with {
    instrumentName = "C"
  }
  {
    \tempo 4 = 120
    \relative c {
      \clef "bass"
      c8 d e f g a b c b a g f e d c4 \bar "||" c8 e g c [g e] c4 \bar "|."
    }
  }
}

\score {
  \new Staff \with {
    instrumentName = "F"
  }
  {
    \relative c {
      \clef "bass" \key f \major
      <<
	{ f8 g a bes c d e f e d c bes a g f4 \bar "||" f8 a c f [c a] f4 \bar "|." }
	{ f,8 g a bes c d e f e d c bes a g f4 \bar "||" f8 a c f [c a] f4 \bar "|." }
	\\
      >>
    }
  }
}

\version "2.18.2"
