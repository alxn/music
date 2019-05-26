%{
%}
\header{
  title = "ANDANTE and RONDO"
  subtitle = "from Concerto for Double Bass"
  tagline = "" % removed 
  composer = "Antonio Capuzzi (1755-1818)"
}

\paper {
  page-count = #1
}

\score {
  \relative {
    \tempo "Andante cantabile" 4 = 63
    \clef "bass" \key bes \major \time 3/4
    \set Score.markFormatter = #format-mark-box-alphabet
    \compressFullBarRests {
      R2.*16
    }
    \tupletSpan 4
    \tupletUp

    \mark \default % A
    bes4^\markup { \italic "legato" }\p\< d c\!
    bes\> f\! r
    c'\< ees d8. bes16\!
    c4\> f,\! r
    d'8 ees16( f) bes,8-.( bes-. bes-. bes-.)
    a16\<( bes) c d\! es2\>
    d8\! \< ees16( f) ees8.( c16) d8.( bes16) \!
    d4\>( c)\! r
    \mark \default % B
    c4. \< d16 c\! d\>( c) bes a\!
    bes8-- g-- e-- g-- c,4--
    \breathe
    bes'4.\< c16 bes\! c\>( bes) a g\!
    a8-- f-- c-- a-- f4--
    \breathe
    f'8.\pp\< bes16 bes4.\! a8\>
    g4.\! e8 f4
    \breathe
    f8.\cresc d'16\! d4 c\f
    \breathe
    b2.\p\<
    bes2.
    \breathe
    a8\mf( bes16 c) f,4 g\>
    f4 r\! r
    R2.*2
    R2.^\markup { \italic "rall." }
    \mark \default % C
    R2.*1^\markup { \italic "a tempo" }
    \tuplet 3/2 {r8\p\< f g a g f} bes4\!
    ees c\> d
    \tuplet 3/2 {c8 c\!\<[ a] f c a\! f-- g-- a--}
    bes4-- r4 r
    \tuplet 3/2 {r8\p\< c' d e d c} f4\!
    g\> f e
    \tuplet 3/2 {f8\! a,[ c] f, a c} f4
    r4 r g,\<(
    \tuplet 3/2 {c8) ees, g\! c\> ees g} c,4\!
    r4 r f,\<(
    \tuplet 3/2 {bes8) d, f\!\> bes d f} bes,4\!
    R2.
    \tuplet 3/2 {d,8\< f bes d bes f\! g\>( ees) c}
    f2\! g,4
    bes r4 r
    \mark \default % D
    ees8\mf\< g bes ees d c\!
    c4\> bes2\!
    bes,8\< d f aes g f\!
    f4\> ees2\!
    ees16\p \cresc( bes)\! g bes ees8-. ees-. g16( f) ees f
    g( ees) bes ees g8-. g-. bes16( aes) g aes
    bes8 \breathe c16[ d16] ees( d) ees d ees( d) c bes
    a--( bes) c a f4. ees'8
    d16-- ees f d bes4. g8
    fis16\dim( g)\! a fis d4. c'8
    bes16( c) d bes g4. \breathe g8\p \cresc
    aes2.\!
    b2.
    c8( ees) ees4.\f\> d16 c
    bes g\!\mp\<( fis g) bes g( fis g) a( bes) c d
    ees8. c16 fis8. d16 g4\!\f \breathe
    ees8.\> c16 bes4 a
    g\! r r
    R2.*3
    \mark \default % E
    d16\p^\markup { \italic "legato" } f d f d f d f ees g r g
    f\cresc a\! f a f a f a g bes r bes
    a c a c a c a c bes d r d
    f\f e,( f) e( f) e( f) e\>( f) ees d c
    bes8\! r r4 r4
    R2.*3
    \mark \default % F
    \tuplet 3/2 {g8 b d g b d g( f) d}
    c4 c,2
    \tuplet 3/2 {f,8\< a c f\!\> a c f( ees) c}
    bes4 bes,2\!
    \tuplet 3/2 {g'8\cresc( bes\!) bes f( bes) bes ees( bes) bes}
    \tuplet 3/2 {d, \breathe f bes d( bes) f g( ees) c}
    f2\f\>( f,4)
    bes8 \breathe d\! \mp \< [ f bes d f]
    f4.\!\mf\>( g8) ees4
    ees2( d4)\!
  }
  \layout { }
  \midi { }
}
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
