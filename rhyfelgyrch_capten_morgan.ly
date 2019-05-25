%{
%}
\header{
  title = "Rhyfelgyrch Capten Morgan"
  subtitle = "Captain Morgan's Battle Song"
  composer = "Welsh traditional"
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\score {
  \relative {
    \tempo "Alla marcia" 4 = 85
    \numericTimeSignature
    \clef "bass" \key bes \major \time 4/4
    \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" }

    \repeat volta 2 {
      f4->\f bes8.-> bes16-> bes4-> f->
      bes8.-> c16-> d8.->_4 c16-> bes2-- \breathe
      ees4-"simile" ees8. f16 d4_4 bes
      c c c2 \breathe
    }

    f4 f d bes
    ees8. f16 ees8 (d_4 c4.) \breathe c8
    bes (d) c8. bes16 a4 bes8. c16
    d4_4 c bes2 \breathe

    f'4\cresc f\! d bes
    ees8. f16 ees8 (d_4 c4.) \breathe c8\f
    bes (d) c8. bes16 a4 bes8. c16
    d4--_4 c-- bes2--
  }
}

\version "2.18.2"
