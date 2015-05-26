\version "2.12.3"

\header {
    title = "Die Erde freue sich"
    composer = "Esther Judith Becker, 2012"
}

global = {
    \key es \major
    \time 4/4
    \tempo 4 = 110
}

textA = \lyricmode {
    \set stanza = "Vers 1. "
    Die Er -- de freu -- e sich, der Herr ist Kö _- nig,
    die vie -- len In -- seln sei -- en fröh -- lich!
    Wol -- ken und Dun -- kel sind um Ihn her,
    Feu -- er geht _ vor Ihm her,
    die Him -- mel ver -- kün -- den Sei -- ne Ge -- rech -- tig -- keit, _ _ 
    al -- le Völ -- ker se -- hen Sei -- ne Herr -- lich -- keit.
}
textRefrain = \lyricmode {
    \set stanza = "Refrain: "
    Singt auf den In -- seln: „A -- do -- nai Shi -- ri!“
    Ruft in den Wüs -- ten: „A -- do -- nai Nis -- si!“
    Singt an den Küs -- ten: „A -- do -- nai Raf -- fa!“
    Ruft auf den Ber -- gen: „A -- do -- nai Sham -- mah!“
}
textB = \lyricmode {
    \set stanza = "Vers 2. "
    _ Blit -- ze leuch _- ten _ Ber -- ge zer -- schmel _- zen.
    Herr, _ du bist hoch -- er -- ha -- ben.
    Singt dem _ Herrn ein neu -- es _ Lied,
    singt _ Ihm, dem Kö _- nig! _
    Licht ist ge -- sät _ al _- len _ Ge -- rech _- ten.
    Freu -- de den _ Auf -- rich -- ti -- gen Her _- zen.
}
textC = \lyricmode {
    \set stanza = "Vers 3. "
    Singt, ihr See -- fah -- rer, singt ihr Berg -- stei -- ger,
    singt auch, ihr Wüs -- ten -- be -- woh -- ner!
    Ihr aus dem Berg -- land auf den Gip -- feln,
    ihr Be -- woh -- ner der In -- seln und Küs -- ten,
    gebt dem Herrn die Eh -- re!
    Un -- er -- gründ -- lich sind sei -- ne We -- ge!
}

akkorde = \chordmode {
    \partial 8 s8 | c1:m | f1:m | c1:m | f1:m | c1:m |
    c1:m | f1:m | f1:m | bes1 | es1 | c1:m | f1:m |
    bes1 | es1 | f1:m | c1:m |
    
    bes1 | es1 | f1:m | c1:m |
    g1 | c1:m | c1:m | g1 |
    bes1 | es1 | f1:m | c1:m |
    g1 | c1:m | g1 | c1:m |
    
    c1:m | f1:m | c1:m | f1:m  | c1:m |
    c1:m | f1:m | f1:m | bes1 | es1 | c1:m |
    f1:m | bes1 | es1 | f1:m | c1:m |
}

noten = {
    \phrasingSlurDotted
    \partial 8 c8 | es4 es es8\( c\) c\( c\) | f4\( f4\) f8\( f8\)\( c8\) c | 
    g'4\( g\) g g | as g f f | c' c8\( c\) g4 g |
    es4 es8\( d\) c2 | c'4\( c\) as4\( as4\) | f4\( f\) f4.\( f8\) |
    f4 f8 f f4\( f\) | g4\( g8\) g\( g4\) f | g2.\( c4 | as2.\) r4 |
    f4 f f\( f\) | g g g g | c2.\( as4\) | g2. r4 |
    \bar"||"
    \break
    d2 d4 d | es2 bes2 | as'4 as as g | g2. r4 |
    d2 d4 g | es2 c2 | c'4 c c as | g2. r4 |
    d2 d4 d | es2 bes | as'4 as as g | g2. r4 |
    d2 d4 g | es2 c | b'4 b b b | c2. r4 |
    \bar"||"
    \break
    es,4 es es c8 c | f4 f f c8 c | g'4 g g2 | as4 g8 g f4 f |
    c'4 c8 c g4 g | es4 es8( d) c4 c | c'4 c as4 as8 as | 
    f4 f8 f f4 f | f2. f4 | g2. f4 | g2.( c4) | as2. r4 |
    f4 f f f | g2 g4 g | c2.( as4) | g2. r4 |
    \bar"|."
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkorde }
        \new Voice { << \global \relative c' \noten >> }
        \addlyrics { \textA \textRefrain \textC }
        \addlyrics { \textB }
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