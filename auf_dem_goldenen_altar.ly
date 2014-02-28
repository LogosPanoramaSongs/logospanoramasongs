\version "2.13.3"

\header {
  title = "Auf dem goldenen Altar"
  composer = "Esther Judith Becker"
}

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 100
}

akkorde = \chordmode {
  r4 c1 d1:m g1 f2 c2 f1 c1 
  % zeile 4:
  g1 c1 c1 d1:m g1 f2 c2 
  
  c2 f2 f1 e1 a1:m f2 c2
  c1 d1:m g1 f2 c2 c1
  e1 a1:m d1:m f2 c2
  e1 a1:m
  
  % seite 2
  
  d1:m f2 c2 c1
  f1 g1 c1
  c1 f1 g1
  c1 e1 a1:m
  d1:m f2 c2 e1
  a1:m d1:m f2 c2
  f1 e1
  a1:m f2 c2
  f1 e1 a1:m c1 c1
  f1 g1 c1
}

text = \lyricmode {
Mit ei -- nem gol -- de -- nen Ge -- fäß in der Hand
trat er vor dem Thron der All -- macht.
Ihm wur -- de viel Weih -- rauch ge -- reicht,
den er auf dem gol -- de -- nen Al -- tar gab
als Zei -- chen da -- für, dass un -- ser Lob hi -- nauf steigt,
un -- ser Ge -- bet Got -- tes Herz er -- reicht.

Der Duft des Weih -- rauchs steigt hi -- nauf,
aus der Hand des En -- gels steigt er hi -- nauf
mit den Ge -- be -- ten all der Men -- schen,
die Gott lie -- ben und zu Ihm ge -- hö -- ren.

Wie Weih -- rauch steigt mein Ge -- sang em -- por,
vor Dein An -- ge -- sicht, vor Dei -- nen Thron.
Als Weih -- rauch steigt mein Ge -- bet em -- por,
vom Al -- tar vor Dei -- nem Thron.

A -- shi -- rah Le -- cha, A -- don,
A -- zam -- rah Shim -- cha, El -- yon,
A -- ha -- lel Ot -- cha, El Sa -- li,
A -- va -- rech Ot -- cha, El Ro -- i.

A -- i -- rah sho -- char, El Chai -- yai,
A -- za -- prah Shim -- cha le' E -- chai,
Ez -- be -- chah ze -- vach to -- dah,
Ez -- be -- chah ze -- vach te -- ru -- ah.

Te -- fil -- la -- ti ke -- to -- ret Le -- fa -- nei -- cha
Al Miz -- be -- ach Ha -- Za -- hav.
Te -- hil -- la -- ti ke -- to -- ret Le -- fa -- nei -- cha
Al Miz -- be -- ach Ha -- Za -- hav.

Le -- cha a -- ha -- va -- ti, El O -- lam,
Le -- cha a -- ha -- va -- ti ad o -- lam.

Lecha ahavati, El Olam,
Lecha ahavati, lecha ahavati,
Lecha ahavati ad olam.
}

notesMelody = {
  \partial 4 c4 | c c g'8 g g g | f4 f8 f f2 |
  d8 d d d g4. g8 | d2 e4 c |
  a' a8 a a4 g8 f | g2 e8 e e e |
  f f f f f4( e) e2. c4 | c c8 c g' g g a |
  f4 f16 f8. f2 | d4 d8 d g4 g8 g | f4. e8 e2 |
  r2 r4 r8 a8 | a4 a a a | gis4. gis8 gis2 |
  a8 a a a a4 a | a g8 f e2 |
  c4 c8 c g'4 g8( a) | f4. f8 f4 f |
  d4 d g8 g g g | f4. e8 e4 e | r2 r4 r8 e8 |
  e4 e b' b8 c | c4. b8 e,2 |
  a4 a a8 g f f | f4 f e4. e8 |
  e4 e b' b8 c | c4. b8 e,2 |
  
  % seite 2
  
  f4 f f4. f8 | f4 f e4. e8 | c'4 c8 c c4. g8 |
  a2. a8 a | b4. b8 b4. c8 | c2. c8 c |
  c4 c c( g) | a a a a8 a | b4 b b4.( c8) |
  c4 c c4. e,8 | e4 e8 e b'4.( c8) | c4 b e, a8 a |
  a4. f8 f2 | f4 f e e8 e | e4. e8 b'4. c8 |
  
  c4( b e,) e8 e | f4. f8 f4. f8 | f2 e |
  a8 a a a a a a4 | gis8 gis gis4 gis2 |
  a4 a8 a a4 a8 a | a4( g8 f e2) |
  c'8 c c c c c c4 | b8 b b4 b2 |
  a4 a8 a a4 d8 b | c2.. c8 | c4 \times 2/3 {c8 c c} c4( g) |
  a4 a a4. a8 | b4 \times 2/3 {b8 b b} b4( c) | c c c2 | \bar"|."
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
  >>
  \midi {
    \context {
      \Score
    }
   }
}