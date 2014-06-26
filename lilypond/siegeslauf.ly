\version "2.13.3"

\header {
  title = "Siegeslauf"
  composer = "Esther Judith Becker, 2012"
}

global = {
  \key c \minor
  \time 4/4
  \tempo 4 = 110
}

akkorde = \chordmode {
  c1:m g1 g1 c1:m f1:m 
  c1:m g1 c1:m f1:m c1:m
  g1 c1:m bes1 es1 bes1
  es1
%}

%akkordeRefrain = \chordmode {
  es8 c1:m f1:m bes1 es1 c1:m
  g1 f1:m c1:m es1 g1
  g1 c1:m es1 g1 g1 
  c1:m c1:m f1:m bes1 es1
  c1:m g1 f1:m c1:m bes1
  es1 bes1 es1 bes1 es1 
  bes1 es1
}

textA = \lyricmode {
  \set stanza = #"1. "
  Weit vor -- ge -- rückt ist schon die Nacht und Got -- tes Tag bricht bald an.
  Von den Wer -- ken der Fins -- ter -- nis wol -- len wir uns tren -- nen,
  mit den Waf -- fen des Lichts wol -- len wir uns rüs -- ten. Mensch -- lich sind
  uns' -- re Waf -- fen nicht, er -- greift die Rüs -- tung die gött -- lich ist!
  
}

textRefrain = \lyricmode {
  \set stanza = #"Refrain "
  Der Gür -- tel der Wahr -- heit schüt -- ze den Leib,
  der Helm des Heils schüt -- ze den Ver -- stand,
  Das Herz sei be -- wahrt durch den Brust -- pan -- zer der Ge -- rech -- tig -- keit.
  Seid be -- schuht an den Fü -- ßen mit der Bot -- schaft des Frie -- dens,
  löscht aus die Pfei -- le des Bö -- sen mit dem Schild des Glau -- bens!
  Kämpft mit dem Schwert des Geis -- tes, mit dem Wort Got -- tes,
  Die Lan -- zen des Ge -- bets rich -- tet ge -- gen die Fins -- ter -- nis!
  Lauft ins Ziel! Lauft in den Sieg!
  Lauft ins Ziel! Lauft in den Sieg!
}

textB = \lyricmode {
  \set stanza = #"2. "
  Wir kämp -- fen nicht ge -- gen Men -- schen,
  Son -- dern ge -- gen Ge -- wal -- ten,
  Ge -- gen geis -- ti -- ge Mä -- chte der Bos -- heit.
  Die Macht und Stär -- ke des Herrn sei eu -- re Kraft!
  Got -- tes Sohn ist er -- schie -- nen,
  den Ab -- grund zu be -- sie -- gen.
}

noten = {
  c4 c8 c c4 c | b b b2 | g'4 g8 g g4( f4) | es4 c4 c2 | f4 f f c8 c |
  es4 es es2 | d4 d d g, | c4 c2. | f 4 f f c8 c | es2. r4 | 
  d4 d d es | d4 c2. | d4 d d d8 d | es4 es es4. es8 | d4 d d d8 d | 
  es 4 es es4.
%}

%notesRefrain = {
  \partial 8 es8 | g4 es8 es g4 es4 | as4 g8 g as4. as8 | f4 f f f8 f | g4 f4 g4 g | c2 g4 g | 
  g2. g8 g | as4 as8 as as4 as | g4 f4 g2 | es4 es es es8 es | d4 d2. | 
  d4 d g4 g8 f8 | es4 c2. | es4 es8 es es4 es8 es | d4 d2. | d4 d4 g4 f4 | 
  es4 c2. | g'4 es8 es g4 es | as4( g) as2 | f4 f f2 | g4( f) g4 g | 
  c4 c g4 g | g2. r4 | as4 as as as8 as | g4 f g2 | f2. f4 | 
  g2. r4 | f2 f4 f | g2. r4 | bes2. bes4 | bes2. r4 | 
  bes2 bes4 bes | bes2. r4 | \bar"|."
}

notesRefrainAlt = {
  \partial 8 es8 | g4 es8 es g4 es4 | as4 g8 g as4. as8 | f4 f f f8 f | g4 f4 g4 g | c2 g4 g | 
  g2. g8 g | as4 as8 as as4 as | g4 f4 g2 | es4 es es es8 es | d4 d2. | 
  d4 d g4 g8 f8 | es4 c2. | es4 es8 es es4 es8 es | d4 d2. | d4 d4 g4 f4 | 
  es4 c2. | g'4 es8 es g4 es | as4( g) as2 | f4 f f2 | g4( f) g4 g | 
  c4 c g4 g | g2. r4 | as4 as as as8 as | g4 f g2 | f2. f4 | 
  g2. r4 | f2 f4 f | g2. r4 | f2. f4 | 
  g2. r4 | f2 f4 f | g2. r4 |
}

notesRefrainAltA = {
  \repeat unfold 20 { \skip1 }
  | f2. f4 | 
  g2. r4 | f2 f4 f | g2. r4 |
}

%\bookpart {
  \score {
    <<
      \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
      \new Voice { << \global \relative c' \noten >> }
      \addlyrics { \textA \textRefrain }
    >>
  }
  
  %  \score {
  % <<
  %   \new ChordNames { \set chordChanges = ##t \germanChords \akkordeRefrain }
  %   \new Voice { << \global \relative c' \notesRefrain  >> }
  %   \addlyrics { \textRefrain }
  % >>
%}
%}

% MIDI:
\score {
    <<
      \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
      \new Voice { << \global \relative c' \noten >> }
    >>
    
    \midi {
        \context {
            \Score
        }
    }
}

%\score {
%  <<
%    \new ChordNames { \set chordChanges = ##t \germanChords \akkordeVersEins }
%    \new Voice { << \global \relative c' \notesVersEins >> }
%  >>
%  
%  \midi {
%    \context {
%      \Score
%    }
%   }
%}
%
%\score {
%  <<
%    \new ChordNames { \set chordChanges = ##t \germanChords \akkordeRefrain }
%    \new Voice { << \global \relative c' \notesRefrain  >> }
%  >>
%  
%  \midi {
%    \context {
%      \Score
%    }
%   }
%}