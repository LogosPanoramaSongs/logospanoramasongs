\version "2.13.3"

\header {
  title = "Morgenlicht aus der Höhe"
  composer = "Esther Judith Becker, 2012"
}

global = {
  \key c \minor
  \time 4/4
  \tempo 4 = 110
}

text = \lyricmode {
  Ge -- prie -- sen sei der Er -- lö -- ser,
  Je -- schu -- a, un -- ser Ret -- ter.
  Aus der Hö -- he kam das Mor -- gen -- licht,
  der All -- mäch -- ti -- ge ist un -- ser Mor -- gen -- licht.
  Der leuch -- ten -- de Mor -- gen -- stern ist uns nicht mehr fern.
  Der Fürst des Frie -- dens bringt Barm -- her -- zig -- keit,
  Er ist das Le -- ben und die Wahr -- heit,
  der Weg des Frie -- dens für al -- le Zeit.
  
  Je -- schu -- a, Du bist un -- ser Mor -- gen -- licht,
  Mor -- gen -- licht aus der Hö -- he.
  Je -- schu -- a, wir prei -- sen Dich,
  Dein Lob  er -- klingt in der Hö -- he!
  
  Je -- schu -- a, Du bist un -- ser Mor -- gen -- licht.
  Dir ge -- hö -- ren uns -- re Her -- zen.
  Je -- schu -- a, un -- ser Mor -- gen -- licht,
  wir lo -- ben dei -- nen Na -- men.
  
  Je -- schu -- a, Du bist un -- ser Mor -- gen -- licht.
  Dich er -- hebt mei -- ne See -- le.
  Je -- schu -- a, un -- ser Mor -- gen -- licht,
  Du re -- gierst in der Hö -- he.
  
  Je -- schu -- a, Je -- schu -- a, un -- ser Mor -- gen -- licht!
  Je -- schu -- a, Je -- schu -- a, un -- ser Mor -- gen -- licht!
}

akkorde = \chordmode {
  r8 c1:m f1:m g1 c1:m
  c1:m f1:m f1:m c1:m f1:m
  c1:m g1 c1:m c1:m f1:m
  g1 c1:m c1:m f1:m f1:m
  c1:m f1:m c1:m | f2:m g2 | g2 c2:m |
  %25
  
  c1:m | c2:m f2:m | f1:m g1 f1:m
  g1 c1:m f1:m c1:m c1:m f1:m g1
  %37
  
  c1:m | c2:m f2:m | f1:m g1 f1:m
  g1 c1:m f1:m c1:m c1:m f1:m g1
  
  c1:m | c2:m f2:m | f1:m g1 f1:m
  g1 c1:m f1:m c1:m c1:m f1:m g1
  
  f1:m c1:m g1 c1:m
  f1:m c1:m g1 c1:m
}

notesMelody = {
  \partial 8 g8 | c4 c es4 d8 g,8 | as4 as( as4.) as8 | g4 g b b | c4 c2 r4 |
  g'2. f4 | as as2 r4 | f4 f f as | g2. r4 | as4 as as as |
  g2 r4 g4 | g d d es | c2. g4 | c4 c8 d es4 d8( c) | as2. r4 | 
  g4 g b b | c2. c4 | g'2. f8( es) | as4 as2 r4 | f4 f f as | 
  g2( g8) g g g | as4 as2 as8 as | g4 g2 g4 | f4. g8 d4 d8 c | d4 c c4. g'8 |
  %25
  
  c2 g | c8 bes as g as4 as | f2. r4 | g4 g g2 | as4 as as( g) | 
  g2. r4 | g2 c4 g | as2 as4 as | as8( g4. g2) | g4 g8 g g2 | 
  as4 as c( b) | b2. r8 b8 |
  %37
  
  c2 g | c8 bes as g as4 as | f2. r4 | g4 g g g | as4 as as( g) | 
  g2. r4 | g2 c4 g | as4 as as4 as | as8( g4. g2) | g2 g4 g4 | 
  as4 as c( b) | b2. r8 b8 |
  %49
  
  c2 g | c8 bes as g as4 as | f2. r4 | g4 g g2 | as4 as as( g) | 
  g2. r4 | g2 c4 g | as4 as as4 as | as8( g4. g2) | g4 g4 g2 | 
  as4 as c( b) | b2. r8 b8 |
  %61
  
  c4.( as8) as4. as8 | g4.( f8) g2 | g4 g b b | c2.. b8 |
  c4.( as8) as4. as8 | g4.( f8) g2 | g4 g b b | c1 |
  \bar"|."
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