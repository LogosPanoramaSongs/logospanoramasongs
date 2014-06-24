\version "2.13.3"

\header {
  title = "Augenzeugen der Herrlichkeit"
  composer = "Esther Judith Becker, 2012"
}

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 110
}

text = \lyricmode {
  Le -- gen -- den ha -- ben wir uns nicht aus -- ge -- dacht,
  in uns -- ren Phan -- ta -- sien nichts aus -- ge -- malt.
  Was wir sa -- hen, das be -- zeu -- gen wir,
  da -- mit ihr Le -- ben habt in Ihm,
  der grö -- ßer ist als die Welt
  und ihr Teil -- ha -- ber gött -- li -- cher Na -- tur wer -- det.
  
  Wir sind Au -- gen -- zeu -- gen der Herr -- lich -- keit,
  die Gott Sei -- nem Sohn gab.
  Je -- schu -- a, die So -- ne der Ge -- rech -- tig -- keit,
  leuch -- te in eu -- ren Her -- zen auf,
  leuch -- te in eu -- ren Her -- zen auf!
  
  (Le-)
  
  Wir sind Au -- gen -- zeu -- gen der Herr -- lich -- keit,
  die Gott Sei -- nem Sohn gab.
  Je -- schu -- a, die So -- ne der Ge -- rech -- tig -- keit,
  leuch -- te in eu -- ren Her -- zen auf,
  leuch -- te in eu -- ren Her -- zen auf!
  leuch -- te in eu -- ren Her -- zen auf!
}

akkorde = \chordmode {
  r8 | a1:m d1:m e1
  a1:m a1:m d1:m e1 e2 a2:m
  d1:m a1:m d1:m e2 a2:m
  e1 a1:m g1 c1 a1:m
  f1 g1 c1 a1:m f1
  g1 c1 e1 a1:m g1 c1
  a1:m f1 g1 c1 a1:m f1
  g1 c1
  g1 c1
}

notesMelody = {
  \partial 8 c8 | \repeat volta 2 { e e e e e e e4 | e4 d d4. d8 |
  d8 d d d d4 e | d4 c c2 |
  e8 e e e e4 e | e d d2 | d8 d d4 d e |
  d4 b c4. c8 | a'4 a a g8 f | 
  %10
  e2. c8 c | a'4 a8 a a a a a |
  gis4 b,4 c2 |
  b'8 b b b b4 b8 b | c4 b a4. a8 |
  g2 b4 b | c4( g) e4. e8 | c'1 | c4( b8 a a4.) a8 |
  g4 g b b | c g e2 |
  c'4 c8 c c c c b |
  a1 |
  g4 g8 g g g g b, | c2.. c8 }
  
  b'8 b b b b4 b8 b | c4 b a4. a8 |
  g2 b4 b | c4( g) e4. e8 | c'1 | c4( b8 a a4.) a8 |
  g4 g b b | c g e2 |
  \repeat volta 2 { c'4 c8 c c c c b |
  a1 |}
  \alternative { {g4 g8 g g g g b, | c1 } {g'4 g8 g b b b b | c1 |} }
  
  
  \bar "|."
}

\score {
  <<
    \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
    \new Voice { << \global \relative c' \notesMelody >> }
    \addlyrics { \text }
  >>
}

\score {
  <<
      %\new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
    \new Voice { \unfoldRepeats { << \global \relative c' \notesMelody >> } }
  >>
  
  \midi {
    \context {
      \Score
    }
  }
}