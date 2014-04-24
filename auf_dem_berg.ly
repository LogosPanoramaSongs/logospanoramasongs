\version "2.13.3"

\header {
    title = "Auf dem Berg"
    composer = "Esther Judith Becker, 2011"
}

global = {
    \key d \major
    \time 4/4
    \tempo 4 = 115
}

akkorde = \chordmode {
    r8
    d1 d2 a2
    a1 a2 d2
    d1 d2 a2
    a1 a2 d2
    d1 g2 d2
    d1 a2 d2
    d1 g2 d2
    a1 a2 d2
}

text = \lyricmode {
    Vom Öl -- berg zum Hei -- lig -- tum
    führt der Weg durch das Gol -- de -- ne Tor.
    Die -- ses wird ver -- schloss -- sen sein
    bis der Ret -- ter dort kehrt ein.
    Die Po -- sau -- ne er -- schallt,
    es be -- ginnt das Ju -- bel -- jahr;
    Sein Licht -- glanz strahlt wie Son -- nen -- schein,
    durch das Gol -- de -- ne Tor zieht Er ein.
}

notesMelody = {
    \partial 8 a8 | a4. fis8 fis4( d) | d cis8( d) e2 |
    e4. fis8 g4 g8 g | cis,4 cis8 d d2 |
    a'4. fis8 fis4 d | d cis8( d) e2 |
    a,4 a a a | cis cis8( d) d2 |
    a'4. d8 d4( a) | b a8( g) fis2 |
    fis4 fis fis fis | g g8( fis) fis2 |
    a4. d8 d4 a | b a8 g fis2 |
    a,4 a a a8 a | cis4 cis8 d d2 | \bar"|."
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
        \new Voice { \voiceOne << \global \relative c'' \notesMelody >> }
        \addlyrics { \text }
    >>
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
        \new Voice { \voiceOne << \global \relative c'' \notesMelody >> }
    >>
    
    \midi {
        \context {
            \Score
        }
    }
}