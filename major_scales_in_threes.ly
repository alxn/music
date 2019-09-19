%{
%}
\header{
  title = "Major Scales"
  subtitle = "in threes"
  tagline = "" % removed
  instrument = "Slide Tenor Trombone"
}
glissandoSkipOn = {
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}

glissandoSkipOff = {
  \revert NoteColumn.glissando-skip
  \undo \hide NoteHead
  \revert NoteHead.no-ledgers
}

MajorOne = \relative c {
  \clef "bass"
  \time 6/8
  c8 \glissando \glissandoSkipOn d \glissando \glissandoSkipOff e
   d \glissando \glissandoSkipOn e \glissando \glissandoSkipOff f
   e \glissando \glissandoSkipOn f \glissando \glissandoSkipOff g
   f \glissando \glissandoSkipOn g \glissando \glissandoSkipOff a
   g \glissando \glissandoSkipOn a \glissando \glissandoSkipOff b
   a \glissando \glissandoSkipOn b \glissando \glissandoSkipOff c
   b \glissando \glissandoSkipOn c \glissando \glissandoSkipOff d
   c \glissando \glissandoSkipOn d \glissando \glissandoSkipOff e

   e \glissando \glissandoSkipOn d \glissando \glissandoSkipOff c
   d \glissando \glissandoSkipOn c \glissando \glissandoSkipOff b
   c \glissando \glissandoSkipOn b \glissando \glissandoSkipOff a
   b \glissando \glissandoSkipOn a \glissando \glissandoSkipOff g
   a \glissando \glissandoSkipOn g \glissando \glissandoSkipOff f
   g \glissando \glissandoSkipOn f \glissando \glissandoSkipOff e
   f \glissando \glissandoSkipOn e \glissando \glissandoSkipOff d
   e \glissando \glissandoSkipOn d \glissando \glissandoSkipOff c

  \bar "|."
}
MajorTwo = \relative c {
  \clef "bass"
  \time 6/8
  c8 \glissando \glissandoSkipOn d \glissando \glissandoSkipOff e
   d \glissando \glissandoSkipOn e \glissando \glissandoSkipOff f
   e \glissando \glissandoSkipOn f \glissando \glissandoSkipOff g
   f \glissando \glissandoSkipOn g \glissando \glissandoSkipOff a
   g \glissando \glissandoSkipOn a \glissando \glissandoSkipOff b
   a \glissando \glissandoSkipOn b \glissando \glissandoSkipOff c
   b \glissando \glissandoSkipOn c \glissando \glissandoSkipOff d
   c \glissando \glissandoSkipOn d \glissando \glissandoSkipOff e

   d \glissando \glissandoSkipOn e \glissando \glissandoSkipOff f
   e \glissando \glissandoSkipOn f \glissando \glissandoSkipOff g
   f \glissando \glissandoSkipOn g \glissando \glissandoSkipOff a
   g \glissando \glissandoSkipOn a \glissando \glissandoSkipOff b
   a \glissando \glissandoSkipOn b \glissando \glissandoSkipOff c
   b \glissando \glissandoSkipOn c \glissando \glissandoSkipOff d
   c \glissando \glissandoSkipOn d \glissando \glissandoSkipOff e

   e \glissando \glissandoSkipOn d \glissando \glissandoSkipOff c
   d \glissando \glissandoSkipOn c \glissando \glissandoSkipOff b
   c \glissando \glissandoSkipOn b \glissando \glissandoSkipOff a
   b \glissando \glissandoSkipOn a \glissando \glissandoSkipOff g
   a \glissando \glissandoSkipOn g \glissando \glissandoSkipOff f
   g \glissando \glissandoSkipOn f \glissando \glissandoSkipOff e
   f \glissando \glissandoSkipOn e \glissando \glissandoSkipOff d
   e \glissando \glissandoSkipOn d \glissando \glissandoSkipOff c
  
   d \glissando \glissandoSkipOn c \glissando \glissandoSkipOff b
   c \glissando \glissandoSkipOn b \glissando \glissandoSkipOff a
   b \glissando \glissandoSkipOn a \glissando \glissandoSkipOff g
   a \glissando \glissandoSkipOn g \glissando \glissandoSkipOff f
   g \glissando \glissandoSkipOn f \glissando \glissandoSkipOff e
   f \glissando \glissandoSkipOn e \glissando \glissandoSkipOff d
   e \glissando \glissandoSkipOn d \glissando \glissandoSkipOff c

  \bar "|."
}

\markup {
  \note #"4" #1 = "120"
}
\score {
  \new Staff {
    \set Staff.instrumentName = #"C"
    \key c \major \transpose c c \MajorOne
  }
}
\score {
  \new Staff {
    \set Staff.instrumentName = #"A"
    \key a \major \transpose c a, \MajorTwo
  }
}
\score {
  \new Staff {
    \set Staff.instrumentName = #"E"
    \key e \major \transpose c e, \MajorTwo
  }
}

\layout {
  \context {
    \Score
    \override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #12
    \remove "System_start_delimiter_engraver"
  }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
