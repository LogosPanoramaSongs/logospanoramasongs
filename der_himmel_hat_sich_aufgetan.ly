\version "2.13.3"

\header {
  title = "Der Himmel hat sich aufgetan"
  composer = "Estehr Judith Becker"
}

global = {
  \key a \major
  \time 4/4
  \tempo 4 = 100
}

text = \lyricmode {
  Herr, Du hörst was ich sa -- ge,
  Du siehst wo ich hin ge -- he,
  weißt, was ich den -- ke aus der Fer -- ne.
  Du weißt wo ich auf ste -- he,
  siehst, wenn ich mich hin le -- ge,
  Dei -- ne Hän -- de ü -- ber mir,
  und Dein Geist in mir.
  Ich Kann mich nicht ver -- ber -- gen vor Dir
  Wo -- hin ich auch ge -- he, Du folgst mir.
  Wenn ich sa -- ge, „Nacht um -- hüllt mich!“,
  die Fin -- ster -- nis ist doch so strah -- lend
  wie das Licht.
  Die Dun -- kel -- heit leuch -- tet so wie der Tag.
  Der Him -- mel hat sich auf -- ge -- tan.
}

akkorde = \chordmode {
  a1 e1 a1 a1 d1 a1
  d1 a1 e1 a1 a1 e1 a1
  a1 d1 a1 d1 a1 e1 a1
  a1 d1
  e1 e2 a2 a1 a1 d1
  e1 e1 r1 a1 a1 a1
  d2 e2 a1 a1 d2 e2 a1
}

notesMelody = {
  cis4 cis cis cis | d2 d4( gis,) | a2. r4 |
  e'4 e e e | fis2 fis4( e) | e2. r4 |
  fis2 gis4 a | a4.( e8) e2 | d4 cis b4.( a8) a2. r4 |
  cis4 cis cis cis | d2 d4( gis,) | a2. r4 |
  e'4 e e e | fis2 fis4( e) | e2. r4 |
  
  fis4 fis gis a | a4. e8 e2 | d4 cis b4. a8 | a2. r4 |
  a'4 a8 a a4 a | a a8 gis fis4. r8 |
  e8 e e e e4 e8 e | gis4.( b8) a4. r8 |
  a4 a a a | a4 a a( e) | fis2. r8 fis8 |
  gis4 gis gis gis | gis b cis cis~ | cis4. r8 cis4 b8( a) |
  a2. r8 a8 | a4 a a4. r8 | a4 a a e8 e8 |
  fis2( gis4. a8 | a2 a8) r8 a4 | a4 a a a | a2 gis | a2. r4 | \bar "|."
}

\score {
  <<
    \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
    \new Voice { \voiceOne << \global \relative c' \notesMelody >> }
    \addlyrics { \text }
  >>
}

\score {
  <<
    \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
    \new Voice { \voiceOne << \global \relative c' \notesMelody >> }
    \addlyrics { \text }
  >>
  
  \midi {
    \context {
      \Score
    }
  }
}