\version "2.13.3"

\header {
    title = "Durch das Perlentor"
    composer = "Esther Judith Becker, 2011"
}

global = {
    \key g \minor
    \time 4/4
    \tempo 4 = 120
}

akkorde = \chordmode {
    g1:m c1:m
    f2:7 es2 bes2 d2:7
    g1:m c1:m
    f2:7 es2 bes2 d2:7
    g1:m c1:m f1:7 bes1
    
    es1 f1:7 bes1 g1:m
    
    g1:m c1:m f2:7 es2
    bes2 d2:7 g1:m es1
    f1 bes1 g1:m
    c1:m f1:7
    bes1 g1:m c1:m f1:7 bes1
    es1 f1:7 bes1 g1:m
    
    g1:m c1:m f2:7 es2
    bes2 d2:7 g1:m es1
    f1 bes1 g1:m c1:m
    f1:7 bes1 g1:m c1:m
    f1:7 bes1 es1 f1:7
    bes1 g1:m 
    
    g1:m es1 f1:7 bes1 g1:m
    f1:7 es1 bes1 f1 g1:m
    es2 f2:7 f2:7 bes2
    
    g1:m
    f1:7 es1 bes1 f1 g1:m
    es2 f2:7 f2:7 bes2
}

text = \lyricmode {
    Wie ei -- ne Pal -- me, so blüht der Ge -- rech -- te,
    wie ei -- ne Ze -- der im Li -- ba -- non -- ge -- bir -- ge.
    Wie die Ster -- ne -- so strahlt der Ge -- rech -- te,
    wer Gott liebt, leuch -- tet wie die Son -- ne.
    _ _ _ _ _ _ _ 
    _ _ _ _ _ _ 
    Sein Weg führt zum Him -- mel em -- por,
    er geht durch das Per -- len -- tor.
    Sei -- ne Hei -- mat strahlt wie Kris -- tall,
    sein Haus leuch -- tet wie ein E -- del -- stein.
    Gol -- de -- ne Stra -- ßen füh -- ren ihn zum Fluss
    mit glas -- kla -- rem Was -- ser im Ü -- ber -- fluss.
    _ _ _ _ _ _ _ 
    _ _ _ _ _ _
    Der Baum des Le -- bens wächst an die -- sem Ort,
    Früch -- te rei -- fen im -- mer -- fort.
    La -- chen -- de Kin -- der se -- hen sei -- ne Au -- gen,
    Him -- mels -- mu -- sik hö -- ren sei -- ne Oh -- ren.
    Er lebt im Neu -- en Je -- ru -- sa -- lem, 
    in der Stadt des Herrn.
    _ _ _ _ _ _ _ 
    _ _ _ _ _ 
    Der E -- wi -- ge stand sei -- nem Her -- zen schon nah,
    als er noch Gast auf Er -- den war. 
    Er trinkt vom Was -- ser des Le -- bens,
    er isst vom Baum des Le -- bens, 
    er trägt die Kro -- ne des Le -- bens,
    denn sein Na -- me steht im Buch des Le -- bens.
    
}

notesMelody = {
    d4 d8 d g4 g | g8 es es d es4 es |
    c4 c8 c es4 es8 es | d8 d d c d4 d |
    d4. d8 g4 g | g8 es es d es4 es |
    c4 c es es8 es | d d d( c) d2 |
    %8
    bes'2. d,4 | es2. f4 | g2. es4 | d1 |
    es2. d4 | a2. bes4~ | bes2. a4 | g1 |
    %16
    d'4 d g g | g es8 d es2 | c4 c es es |
    d4 d8( c) d2 | g4 g bes bes | bes a8 g g2 |
    f4 f f8 f g f | f4 f f2 | d4 d8 d d4 f |
    f8 es es d es4. es8 | es4 es8 es es4 g8 g |
    f8 f f2. | bes2. d,4 | es2. f4 g2. es4 | d1 |
    es2. d4 | a2. bes4~ | bes2. a4 | g2.. d'8 | 
    %40
    d4 d g g | g8 es8 es d es2 | c4 c es es |
    d4 d8( c) d2 | g4 g8 g bes4 bes | bes8 a8 a g8 g4 g |
    f4 f8 f f4 f8 f | g4 f4 f4 f4 | d4 d8 d d4 f4 |
    f8( es8) es d es2 | es4 es4 es4 g4 | f1 |
    
    \repeat volta 2 {
    bes2. d,4 | es2. f4 | g2. es4 | d1 |
    bes'2. a4 | g2. a4 | bes1~ | bes2.. bes8 |
    
    bes4 bes8 bes bes4 bes8 bes | bes4 bes8 a g2 |
    f4 f8 f f4 a | bes bes bes2 | bes2 bes4 bes4 |
    bes4 f8 f f4 f | g2 a4 bes | bes f f f |
    f2 f4 f | d' d8 c bes4 bes | g g a a |
    a8 a a a bes4 bes |} 

    bes2 bes4 bes4 |
    bes4 f8 f f4 f | g2 a4 bes | bes f f f |
    f2 f4 f | d' d8 c bes4 bes | g g a a |
    a8 a a a bes4 bes |

    \bar"|."
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \akkorde }
        \new Voice { << \global \relative c' \notesMelody >> }
        \addlyrics { \text }
    >>
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
        \new Voice { << \global \relative c' \notesMelody >> }
    >>
    
    \midi {
        \context {
            \Score
        }
    }
}