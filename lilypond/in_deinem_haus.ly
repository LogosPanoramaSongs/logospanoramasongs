\version "2.13.3"

\header {
    title = "In Deinem Haus"
    composer = "Esther Judith Becker, 2010"
}

global = {
    \key c \major
    \tempo 4 = 105
}

akkorde = \chordmode {
    c1 f1 g1 c1
    c1 c1 a1:m a1:m
    f1 d1:m g2 c2 c2 a2:m
    e1 a1:m a1:m a1:m d1:m g1
    e1 a1:m a1:m a1:m d1:m g1
    e1 a1:m e1 a1:m d1:m g1
    g1 f1 f2 g2 g2 c2
    
    c1 f1 g1 c1
}

text = \lyricmode {
    _ _ _ _ _ _ _ 
    _ _ _ _ _ _ _ 
    _ _ _ _ _ _ _
    \set stanza = #"Vers 1: "
    Mein wun -- der -- ba -- rer Hir -- te bist Du, Herr;
    Nichts wird mir je -- mals fehl -- len.
    Du wei -- dest mich auf saf -- ti -- gen Wie -- sen,
    Du führst mich zu fri -- schen Quel -- len,
    Du lei -- test mich auf si -- che -- ren We -- gen.
    Ich freu -- e mich an Dei -- nem Heil' gen Na -- men.
}

noten = {
    e4 \times 2/3 { f8 e d} e4 f8 g | a4 \times 2/3 {b8 a g} a4 b8 c | d4. d8 e d c b | c1 |
    
    e,4 e8 e e4 e |
    g4.( f8) e2 | d4( c) c2 | c2. r4 | c2 c4 c | d2 d |
    a'4( g e2) | e2( e8) r8 a4 | gis2. gis4 | a2. e4 | e2. d8( c) |
    c2. r4 | f2.( e4) | d2. r4 | gis2. gis4 | a2. e4 |
    e2.( d4) | c2. r4 | f2.( e4) | d2. r4 | gis2 gis4 gis4 |
    a2. a4 | gis2. gis4 | a2. r4 | f2.( e4) | d2. r4 |
    b2 b4 b | c2 c | c4 c f e | d4.( c8) c2 |
    
    e'4. d8 c4 c8 b | a4. g8 f4 f8 a | c4. b8 a4 a8 b | c1 |
    \bar"|."
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkorde }
        \new Voice { \voiceOne << \global \relative c' \noten >> }
        \addlyrics { \text }
    >>
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkorde }
        \new Voice { \voiceOne << \global \relative c' \noten >> }
    >>
    
    \midi {
        \context {
            \Score
        }
    }
}