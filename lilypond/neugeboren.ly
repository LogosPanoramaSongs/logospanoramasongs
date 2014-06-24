\version "2.13.3"

\header {
    title = "Neugeboren"
    composer = "Esther Judith Becker, 2011"
}

global = {
    \key es \major
    \tempo 4 = 110
}

akkorde = \chordmode {
    c1:m f1:m bes2 es2 c1:m c1:m
    f1:m g1 c1:m
    c1:m c1:m f1:m f1:m
    g1 g1 c1:m
    c1:m c1:m f1:m f1:m
    g1 g1 c1:m
}

text = \lyricmode {
    Er war bei Gott und Ihm in al -- lem gleich.
    Er ist das E -- wi -- ge Wort vol -- ler Herr -- lich -- keit.
    Neu -- ge -- bo -- ren, aus Geist ge -- bo -- ren,
    aus Was -- ser und aus Geist neu -- ge -- bo -- ren.
    Neu -- be -- gin -- nen, sich be -- keh -- ren,
    mit Gott Frie -- den schlie -- ßen.
}

noten = {
    g2 c4 g4 | as4.( g8 f4.) f8 | f4 f es f | g2. r4 |
    g2 c4 g | as as8 g f2 | g4 g d es | c2. r4 |
    es4 c c2 | c2. c4 | f4 c c2 | c2. c4 |
    g'4 g g g | d2 es4 d | c2 c2 |
    es4 c c2 | c2. r4 | f4 c c2 | c2. r4 |
    g'2 g | d es4( d) | c2 c |
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
        \new Voice { << \global \relative c'' \noten >> }
        \addlyrics { \text }
    >>
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
        \new Voice { << \global \relative c'' \noten >> }
    >>
    
    \midi {
        \context {
            \Score
        }
    }
}