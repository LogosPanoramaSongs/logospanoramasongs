\version "2.13.3"

\header {
  title = "Siegeslauf"
  composer = "Text und Melodie: Dr. Esther Judith Becker"
  opus = "2011"
}

global = {
  \key c \minor
  \time 4/4
  \tempo 4 = 110
}

akkorde = \chordmode {
  
  
  
}

text = \lyricmode {
  
}

notesMelody = {
  
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