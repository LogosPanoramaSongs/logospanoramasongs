\version "2.12.3"

\header {
    title = "Die Erde freue sich"
    composer = "Esther Judith Becker, 2015"
}

global = {
    \key es \major
    \time 4/4
}

text = \lyricmode {
    Die Er -- de freu -- e sich, der Herr ist Kö -- nig,
    die vie -- len In -- seln sei -- en fröh -- lich!
    Wol -- ken und Dun -- kel sind um Ihn her,
    Feu -- er geht vor Ihm her,
    die Him -- mel ver -- kün -- den Sei -- ne Ge -- rech -- tig -- keit,
    al -- le Völ -- ker se -- hen Sei -- ne Herr -- lich -- keit.
    
    Singt auf den In -- seln: „A -- do -- nai Shi -- ri!“
    Ruft in den Wüs -- ten: „A -- do -- nai Nis -- si!“
    Singt an den Küs -- ten: „A -- do -- nai Raf -- fa!“
    Ruft auf den Ber -- gen: „A -- do -- nai Sham -- mah!“
}

akkorde = \chordmode {
    \partial 8 s8 | c1:m | f1:m | c1:m | f1:m | c1:m |
    c1:m | f1:m | f1:m | bes1 | es1 | c1:m | f1:m |
    bes1 | es1 | f1:m | c1:m |
    
    bes1 | es1 | f1:m | c1:m |
    g1 | c1:m | c1:m | g1 |
    bes1 | es1 | f1:m | c1:m |
    g1 | c1:m | g1 | c1:m |
}

noten = {
    \tempo 4 = 100
    \partial 8 c8 | es4 es es8 c c c | f4 f f c8 c | 
    g'4 g g g | as g f f | c' c8 c g4 g |
    es4 es8 d c2 | c'4 c as2 | f4 es f4. f8 |
    f4 f8 f f4 f | g4 g8 g g4 f | g2.( c4 | as2.) r4 |
    f4 f f f | g g g g | c2. as4 | g2. r4 |
    \bar"||"
    \break
    \tempo 4 = 120
    d2 d4 d | es2 bes2 | as'4 as as g | g2. r4 |
    d2 d4 g | es2 c2 | c'4 c c as | g2. r4 |
    d2 d4 d | es2 bes | as'4 as as g | g2. r4 |
    d2 d4 g | es2 c | b'4 b b b | c2. r4 |
    \bar"|."
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkorde }
        \new Voice { << \global \relative c' \noten >> }
        \addlyrics { \text }
    >>
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkorde }
        \new Voice { << \global \relative c' \noten >> }
    >>
    
    \midi {
        \context {
            \Score
        }
    }
}