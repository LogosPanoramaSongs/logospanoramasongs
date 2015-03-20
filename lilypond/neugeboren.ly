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
    
    c1:m f1:m bes2 es2 c1:m c1:m
    f1:m g1 c1:m
    c1:m c1:m f1:m f1:m
    g1 g1 c1:m
    c1:m c1:m f1:m f1:m
    g1 g1 c1:m
}

textA = \lyricmode {
    \set stanza = "1. "
    Er war bei _ Gott _ _ und Ihm in al -- lem gleich.
    _ Er ist das E -- wi -- ge Wort vol -- ler Herr -- lich -- keit.
    _ Neu -- ge -- bo -- ren, aus Geist ge -- bo -- ren,
    aus Was -- ser und aus Geist neu -- ge -- bo -- ren.
    Neu -- be -- gin -- nen, _ sich be -- keh -- ren,
    _ mit Gott Frie -- den _ schlie -- ßen.
}

textB = \lyricmode {
    \set stanza = "2. "
    Hört, ei -- ne _ Stim _ -- me _ ruft _ in der Wüs -- te:
    Der Ret -- ter ist für euch da. Er bringt Gnade und Wahr -- heit.
    Neu -- ge -- bo -- ren, aus Geist ge -- bo -- ren,
    aus Was -- ser und aus Geist neu -- ge -- bo -- ren.
    Neu -- be -- gin -- nen, Ver -- ge -- bung fin -- den,
    _ mit Gott in Ein -- klang le -- ben.
}

textC = \lyricmode {
    \set stanza = "3. "
    Vom Him -- mel _ stieg he -- rab der hel -- le Mor -- gen -- stern.
    _ Seht Got -- tes Op -- fer _ -- lamm trägt die Last der Welt.
    _ Neu -- ge -- bo -- ren, aus Geist ge -- bo -- ren,
    aus Was -- ser und aus Geist neu -- ge -- bo -- ren.
    Neu -- be -- gin -- nen, zu Gott ge -- hö -- ren,
    _ mit Gott e -- wig _ le -- ben. 
}

textD = \lyricmode {
    \set stanza = "4. "
    Er steht vor der Tür dei -- nes Her -- zens und war -- tet auf dich.
    Du wirst von Gott ge -- bo -- ren, wenn du Ihn auf -- nimmst.
    Neu -- ge -- bo -- ren, aus Geist ge -- bo -- ren,
    aus Was -- ser und aus Geist neu -- ge -- bo -- ren.
    Neu -- ge -- bo -- ren, auf -- er -- stan -- den, 
    zu neu -- em Le -- ben auf -- er _ -- stand -- den.
}

noten = {
    \phrasingSlurDotted
    g2 c4 g8\( g8\) | as4.\( g8 f4.\)\( f8\) | f4\( f\) es f | g2\( g2\) |
    g2 c4 g | as as8\( g\) f2 | g4 g d es | c2\( c2\) |
    es4 c c2 | c2. c4 | f4 c c2 | c2. c4 |
    g'4 g g g | d2 es4 d | c2 c2 |
    es4 c c2 | c2. c4 | f4 c c2 | c2. c4 |
    g'2 g | d es4\( d\) | c2 c |
    
    g'2 c4 g8\( g8\) | as4 as8 g f4 f | f4\( f\) es f | g1 |
    g2 c4 g | as as8\( g\) f2 | g4 g d es | c1 |
    es4 c c2 | c2. c4 | f4 c c2 | c2. c4 |
    g'4 g g g | d2 es4 d | c2 c2 |
    es4 c c2 | c1 | f4 c c2 | c2. c4 |
    g'4 g g g | d2 es4\( d\) | c2 c |
    \bar"|."
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
        \new Voice { << \global \relative c'' \noten >> }
        \addlyrics { \textA }
        \addlyrics { \textB }
        \addlyrics { \textC \textD }
        %\addlyrics { \textD }
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