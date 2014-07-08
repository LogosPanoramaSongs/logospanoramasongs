\version "2.13.3"

\header {
    title = "Am Anfang"
    composer = "Esther Judith Becker, 2012"
}

global = {
    \key g \major
    \time 4/4
    \tempo 4 = 110
}

text = \lyricmode {
    Am An -- fang war das Wort,
    das Wort war bei Gott;
    und Gott war das Wort.
    Die -- ses war am An -- fang bei Gott.
    Die Welt ist durch Ihn und für Ihn
    ent -- stan -- den;
    al -- les, was at -- met, ist durch
    Ihn ge -- schaf -- fen.
    Das Wort ist Mensch ge -- wor -- den
    und wohn -- te un -- ter uns auf Er -- den;
    das wah -- re Licht, 
    das Le -- ben gibt, Schöp -- fer der Welt
    und des Le -- bens Sinn.
    Der hel -- le Mor -- gen -- stern,
    un -- ser Mor -- gen -- licht,
    die Auf -- er -- ste -- hung un -- ser Le -- ben
    und un -- ser Weg.
    
    Auf ei -- nehm ho -- hen Berg ließ er mich ge -- hen,
    die hei -- li -- ge Stadt ließ er mich se -- hen.
    Je -- der Grund -- stein der Stadt -- mau -- er
    be -- steht aus ei -- nem
    
    E -- del -- stein.
    Je ei -- nes der To -- re ist ge -- baut
    aus ei -- ner Per -- le,
    aus rei -- nem Gold ist je -- de Stra -- ße,
    Le -- bens -- bäu -- me tra -- gen Früch -- te.
    Die -- se Stadt braucht we -- der den Mond,
    noch die Son -- ne als Licht -- quel -- le,
    denn das Lamm ist ih -- re Leuch -- te,
    der All -- mäch -- ti -- ge ist ihr Tem -- pel.
}

akkorde = \chordmode {
    \partial 8 s8 | g1 | e1:m | a1:m | d1:7 |
    g1 | e1:m | a1:m | d1:7 |
    d1:7 | g1 | c1 | d1:7 |
    g1 | e1:m | c1 | d1:7 |
    g1 | e1:m | g1 | e1:m |
    a1:m | d1:7 | g1 |
    e1:m | a1:m | d1:7 | d1:7 | g1 |
    c1 | d1:7 | g1 | e1:m |
    c1 | d1:7 | g1 | e1:m |
    g1 | c1 | d1:7 | d1:7 |
    g1 | c1 | d1:7 | d1:7 |
    g1 | c1 | d1:7 |
    
    g1 | e1:m | e1:m |
    a1:m | a1:m | d1:7 |
    d1:7 | g1 | c1 |
    d1:7 | d1:7 | g1 |
    c1 | e1:m | a1:m |
    d1:7 | g1 | e1:m | a1:m |
    d1:7 | g1 |
}

noten = {
    \partial 8 b8 | d4 d d d | e2. r8 e8 | e2 e4 e4 | d2. g8( fis) |
    g2. g8 g | g8( e4. e2) | a4 a a a | b a2. |
    g2( fis) | g2. r8 b8 | c2 c4 b | a2 c4 c |
    b4. a8 g4. ( a8) | b2. r4 | c2 c4 b | a a g fis |
    g4. e8 d4.( b8) | e2. r8 b8 | d4 d d d | e4 e2 r8 e8 |
    e8 e e e e4 e | d4 d( d8) d g fis | g2. r8 g8 |
    g4 e e2 | a2 a4 a | b( a) a a | g2 fis2 | g2. r8 b8 |
    c4 c c b | a2 c4 c | b4.( a8) g4.( a8) | b2. r8 b8 |
    c4 c c b | a a g fis | g4.( e8) d4. b8 | e2. r4 |
    d4 d8 d d4 d | e e e e | fis2 fis~ | fis4 r4 r4 r8 fis8 |
    g4 g8 g g2 | g2 g4 g | a2 a~ | a4 r4 r4 fis8 fis |
    g4 d d2 | e4 d8( c8) c4. c8 | fis4 fis fis c |
    % 47
    b4 b b2 | g'4 g g4 g | g4( e) e e8 e |
    a4 a a a | b( a) a4 a | a4 a a a |
    a4 a a a | b4. a8 b4 g | g4. fis8 g4 e |
    a4 a a a | a a8 a a2 | b4. a8 b4 g8 g |
    g4.( fis8) g4 e | e2 e | c'4.( b8 a2) |
    fis4 fis8 fis b4( g) | g2. r4 | g2 g | c4. b8 a2 |
    c4 c c( b) | g2 \bar"|."
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