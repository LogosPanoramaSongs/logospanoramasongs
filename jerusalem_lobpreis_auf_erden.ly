\version "2.13.3"

\header {
    title = "Jerusalem - Lobpreis auf Erden"
    composer = "Esther Judith Becker, 2010"
}

global = {
    \key bes \major
    \tempo 4 = 110
}

akkorde = \chordmode {
    g1:m g1:m c1:m c1:m d1:7
    g1:m d1:7 d2:7 g2:m 
}

akkordeRefrain = \chordmode {
    g8:m g1:m c1:m
    f1:7 bes1 g1:m c1:m d1:7
    d2:7 g2:m g1:m c1:m f1:7 bes1
    g1:m c1:m d1:7 d2:7 g1:m
}

text = \lyricmode {
    \set stanza = #"Vers 1: "
    Fins -- ter -- nis be -- deckt die Welt,
    doch der Herr hat dich er -- wählt.
    Dir er -- scheint Sei -- ne Herr -- lich -- keit,
    steht jetzt auf und mach dich be -- reit!
}

textRefrain = \lyricmode {
    \set stanza = #"Refrain: "
    Je -- ru -- sa -- lem wird ein Lob -- preis auf Er -- den sein.
    Je -- schu -- a ist der Herr der Welt.
    Er hat dich für Sei -- nen Thron er -- wählt.
    Ye -- ru -- sha -- la -- yim -- Te -- hil -- lah ba' a -- retz.
    Ye -- shu -- a Me -- lech HaM' -- la -- chim.
    Ba le' Tzi -- yon Pe -- le Yo -- etz.
}

noten = {
    g4. d8 d4. c8 | d4. c8 d2 | g4. es8 es4. d8 | es4. d8 c2 | d4 d d d8 d |
    g4 d d2 | fis4 fis fis g | a4 bes8 a g4. r8 |
}

notenRefrain = {
    \partial 8 d,8 | g4. bes8 a4 d, | es2. r4 |
    f8 f4 g8 f4 es | d2. r8 d8 | g4. bes8 a4 bes | c4. bes8 a2 | fis4. g8 a4 a4  |
    bes8 a g fis g4. d8 | g4. bes8 a4( d,) | es2. r8 es8 | f4. g8 f4 es4 | d2. r8 d8 |
    g4. bes8 a4 bes4 | c4. bes8 a2 | fis4. g8 a4 a4 | bes8 a g fis g2 |
    
    \bar"|."
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkorde }
        \new Voice { \voiceOne << \global \relative c'' \noten >> }
        \addlyrics { \text }
    >>
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkordeRefrain }
        \new Voice { \voiceOne << \global \relative c'' \notenRefrain >> }
        \addlyrics { \textRefrain }
    >>
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkorde }
        \new Voice { \voiceOne << \global \relative c'' \noten >> }
    >>
    
    \midi {
        \context {
            \Score
        }
    }
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkordeRefrain }
        \new Voice { \voiceOne << \global \relative c'' \notenRefrain >> }
    >>
    
    \midi {
        \context {
            \Score
        }
    }
}