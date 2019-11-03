\header{
  title = "Hen Wlad fy Nhadau"
  subtitle = "Lang of My Fathers"
  tagline = "" % removed lilypond
  composer = "James James"
  poet = "Evan James"
}

\layout {
  \context {
    \Score
    \omit BarNumber
  }
}

music = {
  \relative c {
    \clef "bass"
    \tempo "Maestoso" 4 = 80
    \key ees \major \time 3/4

    \partial 4
    ees4 \mf
    g f ees
    bes' aes g
    ees' ees c8 (d)
    ees2 c4
    bes g ees
    ees d ees
    g f f
    f2 g8 (aes)
    bes4 bes g8 (aes)
    bes4 bes c8 d
    ees4 ees c8 d
    ees2 c4
    bes g ees
    f8 g~ g4 f
    ees2.

    \repeat volta 2 {
      bes'2.
      ees2.
      bes4 (g) ees
      ees (d) ees
      f2 g8 (aes)
      bes2 g8 (aes)
      bes2 ees4
      ees2 c8 d
      ees2 c4
      bes g ees
      f8 g4. f4
      ees2.
    }
  }
}
\score {
  \music
  \layout { }
}
\score {
  \unfoldRepeats
  \music
  \midi { }
}

\version "2.18.2"

%{
https://www.bbc.co.uk/wales/music/sites/anthem/pages/anthem-lyrics-phonetic.shtml

My hair-n wool-add ver n-had eye
Un ann-will ee me
Gool-ard buy-rth ah chant-or-yon
En-wog-yon oh vree
Eye goo-rol ruv-elle-weir
Gool-ard garr-weir trah-mahd
Tross ruh-thid coll-ass-ant eye gwide

Gool-ard, gool-ard
Ply-dee-ol oiv eem gool-ard
Trah more un veer eer bee-rr hore-ff buy
Oh buthed eer hen-yithe barr-high

https://www.bbc.co.uk/wales/music/sites/anthem/pages/anthem-lyrics-en.shtml

V1:
Mae hen wlad fy nha-dau yn annwyl i-- mi,
Gwlad beirdd a chan-to-rion, en-wo-gion o fri;
Ei-gw-rol ry-fel-wyr, gwlad-garwyr tra- mâd,
Tros ryd-did go-llasant eu gwaed.

:Chorus:
Gwlad, Gwlad, plei-diol wyf i'm gwlad,
Tra môr yn fur i'r bur hoff bau,
O byd-ded i'r heniaith bar-hau.

V2:
Hen Gymru fynyddig, paradwys y bardd;
Pob dyffryn, pob clogwyn, i'm golwg sydd hardd
Trwy deimlad gwladgarol, mor swynol yw si
Ei nentydd, afonydd, i fi.

>Chorus<

V3:
Os treisiodd y gelyn fy ngwlad dan ei droed,
Mae hen iaith y Cymry mor fyw ag erioed,
Ni luddiwyd yr awen gan erchyll law brad,
Na thelyn berseiniol fy ngwlad.

>Chorus<

%}