\version "2.13.3"

\header {
  title = "Siegeslauf"
  composer = "Text und Melodie: Dr. Esther Judith Becker, 2011"
}

global = {
  \key c \minor
  \time 4/4
  \tempo 4 = 120
}

akkordeVersEins = \chordmode {
  
}

textA = \lyricmode {
  Weit vor -- ge -- rückt ist schon die Nacht und Got -- tes Tag bricht bald an.
  Von den Wer -- ken der Fins -- ter -- nis wol -- len wir uns tren -- nen,
  mit den Waf -- fen des Lichts wol -- len wir uns rüs -- ten. Mensch -- lich sind
  uns'-- re Waf -- fen nicht, er -- greift die Rüs -- tung die gött -- lich ist!
  
}

textRefrain = \lyricmode {
<<<<<<< HEAD
Der Gür -- tel der Wahr -- heit schüt -- ze den Leib, der Helm des Heils schüt -- ze
  den Ver -- stand,
=======
	Der Gür -- tel der Wahr -- heit schüt -- ze den Leib, der Helm des Heils schüt -- ze
  den Ver -- stand, 
>>>>>>> 70d3050d933b6649bae4be521c98cd5e25d56c27
}

notesVersEins = {
  c4 c8 c c4 c | b b b2 | g'4 g8 g g4( f4) | es4 c4 c2 | f4 f f c8 c | es4 es es2 | d4 d d g, | c4 c2. | f 4 f f c8 c | es2. r4 | d4 d d es | d4 c2. | d4 d d d8 d | es4 es es4. es8 | d4 d d d8 d | es 4 es es4.
}

notesRefrain = {
  \partial 8 es8 | g4 es8 es g4 es4 | as4 g8 g as4. as8 | f4 f f f8 f | g4 f4 g4 g | c2 g4 g | g2. g8 g | as4 as8 as as4 as | g4 f4 g2 | es4 es es es8 es | d4 d2. | d4 d g4 g8 f8 | es4 c2. | es4 es8 es es4 es8 es | d4 d2. | d4 d4 g4 f4 | es4 c2. | g'4 es8 es g4 es | as4( g) as2 | f4 f f2 | g4( f) g4 g | c4 c g4 g | g2. r4 | as4 as as as8 as | g4 f g2 | f2. f4 | g2. r4 | f2 f4 f | g2. r4 | bes2. bes4 | bes2. r4 | bes2. bes8 bes | bes2. r4 |
}

notesVersZwei = {
  
}

\bookpart {
  \score {
    <<
      \new ChordNames { \set chordChanges = ##t \germanChords \akkordeVersEins }
      \new Voice { \voiceOne << \global \relative c' \notesVersEins >> }
      \addlyrics { \textA }
    >>
  }
  
  \score {
   <<
     \new Voice { \voiceOne << \global \relative c' \notesRefrain >> }
     \addlyrics { \textRefrain }
   >>
  }
  
  \score {
   <<
     \new Voice { \voiceOne << \global \relative c' \notesVersZwei >> }
   >>
  }
}

\score {
  <<
    \new Voice { \voiceOne << \global \relative c' \notesVersEins >> }
  >>
  
  \midi {
    \context {
      \Score
    }
   }
}
<<<<<<< HEAD

    Status
    API
    Training
    Shop
    Blog
    About

    © 2014 GitHub, Inc.
    Terms
    Privacy
    Security
    Contact

=======
>>>>>>> 70d3050d933b6649bae4be521c98cd5e25d56c27
