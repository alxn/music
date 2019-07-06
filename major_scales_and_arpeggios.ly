%{
%}
\header{
  title = "Major Scales and Arpeggios"
  subtitle = "One Octave"
  tagline = "" % removed
  instrument = "Slide Tenor Trombone"
}

Major = \relative c {
  \clef "bass"
  c8 d e f g a b c
  b a g f e d c4
  \bar "||"
  c8 e g c g e c4
  \bar "|."
}

MajorChord = \relative c {
  \clef "bass"
  <c c'>8 <d d'> <e e'> <f f'> <g g'> <a a'> <b b'> <c c'>
  <b b'> <a a'> <g g'> <f f'> <e e'> <d d'> <c c'>4
  \bar "||"
  <c c'>8 <e e'> <g g'> <c c'> <g g'> <e e'> <c c'>4
  \bar "|."
}

\markup {
  \note #"4" #1 = "120"
}
\score {
  <<
    \new Staff {
      \set Staff.instrumentName = #"C"
      \key c \major \transpose c c \Major
    }
    \new Staff {
      \set Staff.instrumentName = #"F"
      \key f \major \transpose c f, \MajorChord
    }
    \new Staff {
      \set Staff.instrumentName = \markup {#"B" \smaller \flat}
      \key bes \major \transpose c bes, \MajorChord
    }
    \new Staff {
      \set Staff.instrumentName = \markup {#"E" \smaller \flat}
      \key ees \major \transpose c ees \Major
    }
    \new Staff {
      \set Staff.instrumentName = \markup {#"A" \smaller \flat}
      \key aes \major \transpose c aes, \MajorChord
    }
    \new Staff {
      \set Staff.instrumentName = \markup {#"D" \smaller \flat}
      \key des \major \transpose c des \Major
    }
    \new Staff {
      \set Staff.instrumentName = \markup {#"G" \smaller \flat}
      \key ges \major \transpose c ges, \MajorChord
    }
    \new Staff {
      \set Staff.instrumentName = \markup {#"G"}
      \key g \major \transpose c g, \MajorChord
    }
    \new Staff {
      \set Staff.instrumentName = \markup {#"D"}
      \key d \major \transpose c d \Major
    }
    \new Staff {
      \set Staff.instrumentName = \markup {#"A"}
      \key a \major \transpose c a, \MajorChord
    }
    \new Staff {
      \set Staff.instrumentName = \markup {#"E"}
      \key e \major \transpose c e, \MajorChord
    }
    \new Staff {
      \set Staff.instrumentName = \markup {#"B"}
      \key b \major \transpose c b, \MajorChord
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
