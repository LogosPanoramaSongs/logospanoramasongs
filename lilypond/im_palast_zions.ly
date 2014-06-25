\version "2.13.3"

\header {
    title = "Im Palast Zions"
    composer = "Esther Judith Becker, 2012"
}

global = {
    \key e \major
    \time 4/4
    \tempo 4 = 110
}

text = \lyricmode {
    \set stanza = "Vers 1. "
    Leuch -- tend wie ein Blitz o -- ben am Him -- mel,
    schnell wie der Wind, so sind Got -- tes En -- gel;
    doch Got -- tes Sohn ist hoch er -- höht, mit
    Eh -- re und Ruhm ge -- krönt. Es er -- schallt das Horn,
    der Herr sitzt auf Sei -- nem Thron in Sei -- nem Pa -- last in
    Zi -- on. Mit dem Öl der Freu -- de ist
    Er ge -- salbt, nach A -- lo -- e und Myr -- rhe duf -- tet
    Sein Ge -- wand. Sei Zep -- ter ist Ge -- rech -- tig -- keit,
    Sein Reich be -- steht in E -- wig -- keit.
    
    \set stanza = "Vers 2. "
    Wie ei -- ne Tau -- be aus der Fer -- ne kommt Sein Volk
    in Sei -- ne Nä -- he. In gol -- de -- nen Ge --
    wän -- dern kom -- men sie aus al -- len Län -- dern
    in Sei -- ne Ge -- gen -- wart, in Sei -- nen Pa --
    last, in Sei -- nen Pa -- last in Zi -- on.
    Herr -- li -- che Mu -- sik er -- klingt,
    Sein Volk sing Ihm e -- wig -- lich. Die Braut lebt beim
    Bräu -- ti -- gam, in Sei -- nem Pa -- last,
    in Sei -- nem Pa -- last in Zi -- on.
}

akkorde = \chordmode {
    e1 | e1 | a1 | b2:7 e2 | e1 | a1 |
    b1:7 | e1 | e1 | a1 | b1:7 |
    e1 | a2 b2:7 | b1:7 | e1 | a1 |
    
    e1 | b1:7 | e1 | a1 | e1 |
    b1:7 | b2:7 e2 | e1 | e1 | e1 | a1 |
    b2:7 e2 | e1 | a1 | b1:7 | b2:7 e2 |
    
    e1 | a1 | b1:7 | e1 | a2 b2:7 |
    b1:7 | e1 | a1 | e1 | b1:7 |
    e1 | a1 | e1 | b1:7 | e1 |
    a2 b2:7 | b1:7 | e1 |
}

noten = {
    b8 b b cis b2 | gis'4 gis8 fis e4 e |
    cis4 cis8 dis e2 | dis8 e fis dis e4 b |
    gis'4 gis8 a b4. gis8 | a4. gis8 a4. a8 |
    b4 b8 b b4. a8 | gis2. r4 | b,4 b gis' e | cis2. r8 cis8 |
    fis4 fis8 fis fis4 fis | gis4.( fis8 e4) b | a'4 a8 a b4 b |
    b2.( dis,4) | e2. r4 | cis8 cis cis dis e4 e8 cis |
    
    b4. gis8 b4. b8 | fis'8 fis fis gis a a a a |
    gis4. fis8 e4 e | cis'4. a8 a4 cis | b4. gis8 b2 |
    fis4 fis8 fis gis a a4~ | a dis, e2 | r1 |
    \break
    b4 b8 cis b4 b | gis'4. fis8 e4 e | cis4. dis8 e2 |
    dis8( e) fis dis e4 b8 b | gis'4. a8 b4. gis8 |
    a4.( gis8) a2 | b8 b b b b4 b | b4.( a8) gis2 |
    
    b,2 gis'4 e | cis4. cis8 cis2 | fis4 fis fis fis |
    gis4.( fis8 e4) b | a'4 a8 a b4 b | b2.( dis,4) | e2. r4 |
    cis4 cis8( dis) e4 cis | b4. gis8 b2 |
    fis'4 fis8( gis) a4 a | gis4. fis8 e4 e | cis'2 a4 cis |
    b4. gis8 b2 | fis2 gis8( a) a dis, | e2. e4 |
    a4 a8 a b4 b | b2.( dis,4) | e2. r4 | \bar"|."
}

\score {
    <<
	\new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
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