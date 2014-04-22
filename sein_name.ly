\version "2.13.3"

\header {
  title = "Sein Name"
  composer = "Esther Judith Becker, 2010"
}

global = {
  \key g \major
  \tempo 4 = 115
}

akkorde = \chordmode {
  e1:m a1:m d1:7 g1
  e1:m a1:m d1:7 g1
  e1:m a1:m d1:7 g1
  e1:m a1:m d:7 g1
  e1:m a1:m d1:7 g1
  e1:m a1:m d1:7 g1
  e1:m a1:m d1:7 g1
  e1:m a1:m d1:7 g1
  e1:m a1:m d1:7 g1 e1:m a1:m
  d1:7 g1 e1:m a1:m d1:7 g1
  e1:m a1:m d1:7 g1 e1:m
  a1:m d1:7 g1 e1:m a1:m
  
  %seite 2
  
  d1:7 g1 e1:m a1:m d1:7 g1
  e1:m a1:m d1:7 g1 e1:m a1:m
  d1:7 g1 e1:m a1:m d1:7
  g1 e1:m a1:m d1:7 g1
  e1:m a1:m d1:7 g1 e1:m a1:m
  d1:7 g1 e1:m a1:m d1:7
  g1 e1:m a1:m d1:7 g1
  e1:m a1:m d1:7 g1 e1:m a1:m
  d1:7 g1 e1:m a1:m d1:7 g1
}

text = \lyricmode {
  Wer stieg auf zum Him -- mel und kam auf die -- se Er -- de?
  Wer hält die Win -- de in Sei -- ner Hand
  und das Was -- ser in Sei -- nem Ge -- wand?
  Wer schuf die Er -- de vor An -- be -- ginn der Zeit?
  Wie ist Sein Na -- me? Wie ist Sein Na -- me?
  Wie ist der Na -- me von Sei -- nem Sohn?
  
  Dies ist Sein Na -- me, dies ist Sein Na -- me,
  Dies ist Sein Na -- me, Sein Na -- me:
  A -- do -- nai Tze -- va -- ot, El Shad -- dai,
  El El -- yon. E -- lo -- hei Yis -- ra -- el,
  K' -- dosh Yis -- ra -- el. 
  Dies ist der Na -- me von Sei -- nem Sohn,
  dies ist der Na -- me
  
  %seite 2
  
  von Sei -- nem Sohn: Pe -- le Yo -- etz, El Gi -- bor,
  A -- vi Ad Sar Sha -- lom, Im -- ma -- nu -- el, Ye
  shu -- at Yis -- ra -- el, Im -- ma -- nu -- el, Ye shu -- at Yis -- ra --
  el Ye shu -- a, Seh ha -- E -- lo -- him, Ye 
  shu -- a, Me -- lech haM' la -- chim, Ye -- shu -- a, A --
  don ha -- A -- do -- nim, Ye -- shu -- a, Le -- chem ha -- Cha --
  yim, Ye -- shu -- a, Ri -- shon ve A -- cha -- ron, Ye --
  shu -- a, Ben El -- yon, Ye -- shu -- a
  Or ha -- O -- lam, Ye -- shu -- a, A -- ha -- va O -- lam.
}

noten = {
  \repeat volta 2 {b4. a8 g4 fis | e e2 e4 | a4. g8 fis4 e | d d2. |
  g2 g4 g8( fis) | e2 e4 d | d2( fis4) a | g2. r4 |
  b2 b | c c4 b | a2 a4 g | b2. r4 |
  g2 g4 fis | e2 e4 d | d d fis a | g2. r4 | }
  b2 b4 a | c2 c4. r8 | a2 a4 g | b2 b4. r8 |
  g2 g4 b | a2 a4( g) | fis2 fis4 a | g2. r4 |
  
  b2 b4 a | c2 c4. r8 | a2 a4 g | b2 b4. r8 |
  g2 g4 b | a2 a4( g) | fis2 fis4( a) | g2. r4 |
  g2. b,4 | c2. r4 | fis2. c4 | b2. r4 | e2. b4 | a2. r4 |
  fis'2. a4 | g2. r4 | g2. b4 | a2. r4 | a2. c4 | b2. r4 |
  g2.( b8 a) | a2. r4 | fis2. a4 | g2. r4 | b2 b4 a |
  c2 c4( b) | a2 a4 g | b2. r4 | g2 g4 b | a2 a4( g) |
  
  %seite 2
  
  fis2 fis4 a | g2. r4 | g2 g4 b, | c2. r4 fis2. c4 | b2. r4 |
  e2. b4 | a2. r4 | fis'2. a4 | g2. r4 | g2 g4. g8 | a2. a4 |
  a4 a a4. c8 | b2. r4 | g2 g4. b8 | a2. g4 | fis4 fis fis4. a8 |
  g2. b4 | b2.( a4) | c2. r4 | a4 a a4. g8 | b2. b4 |
  b2( d4.) d8( | c2.) r4 | c4 c c4. b8 | b2. b4 | b2.( a4) | c2. r8 b8 |
  
  a4 a a4. g8 | b2. g4 | g2.( b4) | a2. r4 | fis4 fis fis4. a8 |
  g2. b4 | b2.( a4) | c2. r8 b8 | a4 a a4. g8 | b2. b4 |
  b2( d4.) d8( | c2.) r4 | c2 c4( b) | b2. b4 | b2.( a4) | c2. r4 |
  a2 a4. g8 | b2. g4 | g2.( b4) | a2. r4 | fis4 fis fis4. a8 | g2. r4 | \bar"|."
}


\score {
  <<
    \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
    \new Voice { \voiceOne << \global \relative c'' \noten >> }
    \addlyrics { \text }
  >>
}

\markup {
\vspace #2
  Übersetzung:
}

\markup {
\vspace #2
\wordwrap-string #"
  Adonai Tzevaot,
  
  El Shaddai, El Elyon,
  
  Elohei Yisrael,
  
  K'dosh Yisrael.

  
  Pele Yoetz, El Gibor,
  
  Avi Ad, Sar Shalom,
  
  Immanuel, Yeshuat Yisrael.

  
  Yeshua, Seh haElohim,
  
  Yeshua, Melech haM'lachim,
  
  Yeshua, Adon haAdonim,
  
  Yeshua, Lechem haChayim.
  
  
  Yeshua, Rishon v'Acharon,
  
  Yeshua, Ben Elyon,
  
  Yeshua, Or haOlam,
  
  Yeshua, Ahavah Olam.
"
}

\markup {
\vspace #2
\wordwrap-string #"
  Herr der Heerscharen,
  
  Allmächtiger Gott, Höchster Gott,
  
  Gott Israels,
  
  Heiliger Israels.

  
  Wunderbarer Ratgeber, Starker Gott,
  
  Vater der Ewigkeit, Fürst des Friedens,
  
  Gott mit uns, Erlösung Israels

  
  Jesus, Lamm Gottes,
  
  Jesus, König der Könige,
  
  Jesus, Herr der Herren,
  
  Jesus, Brot des Lebens.
  
  
  Jesus, der Erste und der Letzte,
  
  Jesus, Sohn des Höchsten,
  
  Jesus, Licht der Welt,
  
  Jesus, Ewige Liebe.
"
}

\markup {
\vspace #2
  Liedtext entsprechend Sprüche 30 und Jesaja 9
}


\score {
  <<
    \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
    \new Voice { \voiceOne \unfoldRepeats { << \global \relative c'' \noten >> } }
  >>
  \midi {
    \context {
      \Score
    }
  }
}