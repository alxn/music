%{
%}
\header{
  title = "Star Spangled Banner"
  composer = "John Stafford Smith"
  tagline = "" % removed lilypond
  arranger = ""
  poet = "Francis Scott Key"
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

%{ The original tempo marking was an upbeat and celebratory “con
spirito” [with spirit], with today’s slower hymn-like maestoso
becoming typical by World War II.

A 1942 “Code for the National Anthem of the United States of America”
recommends the military’s Service Version in the keys of A-flat and
B-flat (click here) as the most suitable arrangement and suggests a
tempo of 104 beats per minutes with the final two lines slowing to 96
beats per minute.

80, 76

ES: subrayado tenuto, I: tenuto, F: tenue, tenuto, D: gehalten, tenuo, NL: tenuto, DK: tenuto, S: tenuto, FI: viiva, tenuto.

An indication that a particular note should be held for the whole length, although this can vary depending on the composer and era. 
%}

music = {
  \relative {
    \tempo "With spirit" 4 = 104
    \numericTimeSignature
    \clef "bass" \key bes \major \time 3/4
    \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" }

    \partial 4
    f8.--\f d16-.
    \repeat volta 2 {
      bes4-> d-> f->
      bes2 d8. c16
      bes4 d, e
      f2 \breathe f8 f
      d'4. c8 bes4
      a2 g8. a16
      bes4 bes f
    }
    \alternative {
      { d bes \breathe f'8.-- d16-. }
      { d4 bes \breathe d'8.-.\pp (d16-. }
    }
    d4 ees f
    f2) ees8. (d16
    c4 d ees
    ees2) \breathe ees4
    d4. \cresc c8 bes4
    a2 g8. a16
    bes4 d, e\<
    f2 \breathe \tempo 4 = 96 f4->\!\ff
    bes4-> bes-> bes8-> a->
    g4^"simile" g g
    c ees8-- d-- c-- bes--
    \override BreathingSign.text = \markup {
      \musicglyph #"scripts.caesura.curved"
    }
    bes4 a \fermata \breathe f8 f
    bes4( bes8) [c] d [ees]
    f2 bes,8 c
    d4. ees8 c4.^"ten."
    bes2. \fermata
  }
}

\score {
  \unfoldRepeats
  \music
  \layout { }
}
\score {
  \unfoldRepeats
  \music
  \midi { }
}

\version "2.18.2"
