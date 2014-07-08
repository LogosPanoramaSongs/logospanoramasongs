\version "2.13.3"

\header {
    title = "Eine Stimme spricht dich an"
    composer = "Esther Judith Becker, 2011"
}

global = {
    \key g \major
    \time 4/4
    \tempo 4 = 110
}

textA = \lyricmode {
    \set stanza = "Vers 1: "
    Vier Ge -- sich -- ter schau'n mich an,
    als Ers -- tes sieht mich ein Lö -- we an.
    Ich se -- he Macht und Ma -- jes -- tät,
    ich seh' ein Reich, das nie ver -- geht.
    Ich seh' den Kö -- nig der gan -- zen Welt,
    den der al -- les er -- hält.
}
textB = \lyricmode {
    \set stanza = "Vers 2: "
    Vier Ge -- sich -- ter schau'n mich an,
    als Zwei -- tes sieht mich ein Stier an.
    Ich seh' die Last der gan -- zen Welt,
    die Er auf Sei -- nen Schul -- tern trägt.
    Er ist Die -- ner der Men -- schen,
    Er ist Die -- ner des Herrn.
}
textC = \lyricmode {
    \set stanza = "Vers 3: "
    Vier Ge -- sich -- ter schau'n mich an,
    als Drit -- tes sieht mich ein Mensch an.
    Ich se -- he Sei -- ne Voll -- kom -- men -- heit,
    Stär -- ke und Zer -- brech -- lich -- keit.
    Auch wenn Er Leid und Schmer -- zen spürt,
    ist Er ü -- ber En -- gel er -- höht.
}
textD = \lyricmode {
    \set stanza = "Vers 4: "
    Vier Ge -- sich -- ter schau'n mich an,
    als Vier -- tes sieht mich ein Ad -- ler an.
    Ich se -- he Pracht und Herr -- lich -- keit,
    ich seh' den Glanz der E -- wig -- keit.
    Ü -- ber all dem Staub der Welt
    fliegt er o -- ben am Him -- mels -- zelt.
}
textE = \lyricmode {
    \set stanza = "Vers 5: "
    Plötz -- lich er -- ken -- ne ich das fünf -- te Ge -- sicht:
    Ich se -- he ein Lamm, das ge -- schlach -- tet ist.
    Ich se -- he Schuld und Süh -- ne und die Macht der Lie -- be.
    Ich se -- he Sei -- ne blu -- ten -- de Wun -- de.
}
textF = \lyricmode {
    \set stanza = "Vers 6: "
    Fünf Ge -- sich -- ter schau'n dich an,
    ei -- ne Stim -- me spricht dich an:
    „Wer an mich glaubt, der lebt, wenn er stirbt,
    wer mir folgt, der lebt e -- wig -- lich.“
    So spricht der Ers -- te und der Letz -- te,
    der An -- fang und das En -- de,
}
textG = \lyricmode {
    der war und der ist und der kom -- men wird.
    der war und der ist und der kom -- men wird.
    der war und der ist und der kom -- men wird.
    der war und der ist und der kom -- men wird.
}
pusherA = \lyricmode {
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
}
pusherB = \lyricmode {
    _ _ _ _ _ _ _ _ _
}

akkorde = \chordmode {
    a1:m | d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 | e1:m |
    
    e1:m | a1:m | d1:7 |
    g1 | e1:m | a1:m |
    d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 |
    
    a1:m | d1:7 | g1 | e1:m |
    
    % Vers 2:
    e1:m | a1:m | d1:7 |
    g1 | e1:m | a1:m |
    d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 |
    
    a1:m | d1:7 | g1 | e1:m |
    
    % Vers 3:
    e1:m | a1:m | d1:7 |
    g1 | e1:m | a1:m |
    d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 |
    
    a1:m | d1:7 | g1 | e1:m |
    
    % Vers 4:
    e1:m | a1:m | d1:7 |
    g1 | e1:m | a1:m |
    d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 |
    
    % Vers 5:
    a1:m | d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 | e1:m |
    
    % Vers 6:
    e1:m | a1:m | d1:7 |
    g1 | e1:m | a1:m |
    d1:7 | g1 | e1:m |
    a1:m | d1:7 | g1 |
    
    a1:m | d1:7 | g1 | e1 |
    a1:m | d1:7 | g1 | e1 |
    a1:m | d1:7 | g1 | e1 |
    a1:m | d1:7 | g2 d2:7 | g1 |
}

noten = {
    c4 c c b | a a g a | b2 b4 a | g2. g4 |
    c2 c4 b | a2 g4 a | b2 b4 a | b2. b4 |
    c4 c c b | a a g a | b b b a | g2. g4 |
    c4 c c b | a2 g4 fis | g2 g | r1 |
    c2 c4 b |  a2 g4 fis | g2. fis4 | e1 |
    
    b4 b e e | e c8 c( c4.) c8 | a4 a c c8 c |
    b4 b8 b( b4.) b8 | e4 e b' b | b8 a4 a8( a4) r8 a8 |
    a4 a c c | b b8 b( b4.) g8 | g4 g b b8 b |
    b4 a a2 | a4 a c c8 c | b2. r4 |
    
    c2 c4 b |  a2 g4 fis | g2. fis4 | e1 |
    
    % Vers 2:
    b4 b e e | e c8 c( c4.) c8 | a4 a c c8 c |
    b2 b4. b8 | e4 e b' b | b4 a4 a2 |
    a4 a8 a8 c4 c | b4 b b2 | g4 g b b8 b |
    b4( a) a2 | a4 a c c8 c | b2. r4 |
    
    c2 c4 b |  a2 g4 fis | g2. fis4 | e1 |
    
    % Vers 3:
    b4 b e e | e c8 c( c4.) c8 | a4 a c c8 c |
    b2 b4. b8 | e4 e b'8 b b4 | b4 a4 a2 |
    a4 a4 c4 c | b4 b b2 | g4 g8 g8 b4 b4 |
    b4 a a2 | a8 a a8 a8 c4 c8 c | b2. r4 |
    
    c2 c4 b |  a2 g4 fis | g2. fis4 | e1 |
    
    % Vers 4:
    b4 b e e | e c8 c( c4.) c8 | a4 a c c8 c |
    b4 b8 b( b4.) b8 | e4 e b'4 b4 | b4 a4 a4. a8 |
    a4 a4 c4 c | b4 b b2 | g4 g  b b |
    b4 a a2 | a4 a c4 c8 c | b4 b b2 |
    
    % Vers 5:
    c4 c c( b) | a a g a | b2 b4 a | g2. g4 |
    c2 c4 b | a2 g4 a | b2 b4( a) | b2. b4 |
    c4 c c b | a a g a | b b b( a) | g2. g4 |
    c4 c c b | a2 g4 fis | g2 g | r1 |
    
    % Vers 6:
    b,4 b e e | e c8 c( c2) | a4 a c c4 |
    b4 b8 b( b2) | e4 e8 e b'4 b4 | b4 a8 a a2 |
    a4 a4 c4 c8 b | b4 b b2 | g4 g8 g b4 b |
    b4 a a4 a8 a | a4 a c4 c | b4 b2 b4 |
    
    c2 c4 b | a2 g4 a | b2 b4( a) | g2. g4 |
    c2 c4 b | a2 g4 a | b2 b4( a) | b2. b4 |
    c2 c4 b | a2 g4 a | b2 b4( a) | g2. g4 |
    c2 c4 b | a2 g4 fis | g2 fis | g1 |
    
    \bar"|."
}

\score {
    <<
	\new ChordNames { \set chordChanges = ##t \akkorde }
	\new Voice { << \global \relative c'' \noten >> }
	\addlyrics { \pusherA \textA \pusherB \textB \pusherB \textC \pusherB \textD \textE \textF \textG }
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