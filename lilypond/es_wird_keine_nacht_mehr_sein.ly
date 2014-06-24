\version "2.13.3"

\header {
    title = "Es wird keine Nacht mehr sein"
    composer = "Esther Judith Becker, 2010"
}

global = {
    \key c \major
    \tempo 4 = 110
}

akkorde = \chordmode {
    a2:m d2:m d1:m a2:m d2:m e1 a2:m e2
    a1:m d1:m a1:m e1 a1:m
    e1
    a1:m d1:m e1 e2 a2:m a1:m
    d1:m e1 e2 a2:m 
    
    e1
    a2:m d2:m d1:m a2:m d2:m
    e1 a2:m e2 a1:m
    d1:m a1:m e1 a1:m
    e1
    a1:m d1:m e1 e2 a2:m
    a1:m d1:m e1 e2 a2:m
    e1
    
    a2:m d2:m d1:m a2:m d2:m
    e1 a2:m e2 a1:m
    d1:m a1:m e1 a1:m
    e1
    a2:m d2:m d1:m a2:m d2:m e1
    a2:m e2 a1:m d1:m a1:m
    e1 a1:m
}

textA = \lyricmode {
    \set stanza = #"Refrain: "
    Es wird kei -- ne Nacht mehr sein
    das Lamm wird dein Licht für al -- le Zei -- ten sein,
    dein Licht sein. dein Licht sein.
    \set stanza = #"Vers 1: "
    Se -- lig ist, se -- lig ist, der Got -- tes Wor -- te liebt;
    Se -- lig ist, se -- lig ist, der Got -- tes Wor -- te liebt.
    
    \set stanza = #"Refrain: "
    Es wird kei -- ne Nacht mehr sein
    das Lamm wird dein Licht für al -- le Zei -- ten sein,
    dein Licht sein. dein Licht sein.
    \set stanza = #"Vers 2: "
    Se -- lig sind, se -- lig sind, die rei -- nen Her -- zens sind.
    Se -- lig sind, se -- lig sind, die rei -- nen Her -- zens sind.
    
    Komm und trink vom Was -- ser des Le -- bens,
    sei be -- reit für den Baum des Le -- bens, des Le -- bens! des Le -- bens!
    
    \set stanza = #"Refrain: "
    Es wird kei -- ne Nacht mehr sein
    das Lamm wird dein Licht für al -- le Zei -- ten sein,
    dein Licht sein. dein Licht sein.
}

noten = {
    \repeat volta 2 {
        a4. e8 f4. e8 | f4. e8 e( d4) d8 | a'4.( e8 f2) |
        gis2 b | c8 b b a a( gis) gis( a) | a2. r4 |
    } \alternative { {f2 f4( e) | e2. r4} {gis2 gis | a2. r4 |} }
    r1 |
    \bar"||" \break
    a4. e8 e2 | f4. e8 e( d4.) | e2 e4 e | e4 e a8( e e4) |
    a4. c8 b4( a) | f4. a8 g4( f) | e2 e4 e | c' a8( gis) a2 |
    r1 |
    \break
    \repeat volta 2 {
        a4. e8 f4. e8 | f4. e8 e( d4) d8 | a'4.( e8 f2) |
        gis2 b | c8 b b a a( gis) gis( a) | a2. r4 |
    } \alternative { {f2 f4( e) | e2. r4} {gis2 gis | a2. r4 |} }
    r1 |
    \bar"||" \break
    a4. e8 e2 | f4. e8 e( d4.) | e2 e4 e | e4 e a8( e e4) |
    a4. c8 b4( a) | f4. a8 g4( f) | e2 e4 e | c' a8( gis) a2 |
    r1 |
    \break
    \repeat volta 2 {
        a4. e8 f4. e8 | f4 f8 e8 e( d4) d8 | a'4. e8 f2 |
        gis4 gis4 b4 b4 | c8( b b a a gis gis a) | a2. r4 |
    } \alternative { {f2 f4( e) | e2. r4} {gis2 gis | a2. r4 |} }
    r1 |
    \break
    \repeat volta 2 {
        a4. e8 f4. e8 | f4. e8 e( d4) d8 | a'4.( e8 f2) |
        gis2 b | c8 b b a a( gis) gis( a) | a2. r4 |
    } \alternative { {f2 f4( e) | e2. r4} {gis2 gis | a2. r4 |} }
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkorde }
        \new Voice { << \global \relative c'' \noten >> }
        \addlyrics { \textA }
    >>
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkorde }
        \new Voice { << \global \relative c'' \noten >> }
    >>
    
    \midi {
        \context {
            \Score
        }
    }
}