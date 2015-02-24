\version "2.12.3"

\header {
    title = "Der Hohepriester"
    composer = "Esther Judith Becker, 0000"
}

global = {
    \key e \minor
    \time 4/4
    \tempo 4 = 100
}

pusherVorspiel = \lyricmode {
    _ _ _ _ _ _ _ _ _ _ _ _ _ 
}

textA = \lyricmode {
    \set stanza = "Vers 1 "
    Mal -- ki -- ze -- dek seg -- ne -- te Ab -- ra -- ham,
    der Kö -- nig von Sha -- lem brach -- te ihm Brot und Wein.
    Sei -- ne Ta -- ge auf die -- ser Er -- de
    hat -- ten kei -- nen An -- fang und kein En -- de,
    er war oh -- ne Va -- ter und oh -- ne Mut -- ter
    und bleibt für im -- mer der Ho -- he -- pries -- ter.
}

textRefrain = \lyricmode {
    \set stanza = "Refrain "
    Ab -- ra -- ham sah Dei -- nen Tag und freu -- te sich!
    Du bist ein Pries -- ter e -- wig -- lich!
    Mal -- ki -- ze -- dek, Kö -- nig von Scha -- lem,
    Kö -- nig des Frie -- dens,
    Kö -- nig von Je -- ru -- sa -- lem,
    Kö -- nig der Ge -- rech -- tig -- keit,
    Je -- schu -- a, Je -- schu -- a.
}

textZwischenspiel = \lyricmode {
    _ _ _ _ _ _ _ _ _ _ _ _ _ 
    Du reichst mir Brot und Wein. Ich er -- he -- be den Kelch des Heils.
}

textC = \lyricmode {
    \set stanza = "Vers 2 "
    Je -- schu -- a gab als Brot sei -- nen Leib,
    sein Blut als Wein. Er ging durch Sein ei -- ge -- nes Blut
    hi -- nein in ds himm -- li -- sche Hei -- lig -- tum.
    Er ist für uns der ein -- zi -- ge Mitt -- ler,
    denn Er ist un -- ser Ho -- he -- pries -- ter.
}

akkordeVorspiel = \chordmode {
    a2:m e2:m | e1:m | a2:m b2:7 | e1:m |
}
notenVorspiel = {
    c4. b8 e4 g | b4. g8 e4 g | a4. g8 fis4 dis | e1 |
    \bar"||"
}

akkordeVersA = \chordmode {
    e1:m | a1:m | b1:7 | b2:7 e2:m | e1:m | a1:m | b1:7 |
    e1:m | a1:m | b1:7 | e2 b2:7 | b2:7 e2:m |
}
notenVersA = {
    g4. g8 e4 e | a8 a a4 a8 e e e |
    fis4 fis8 fis fis4 fis | b8 b b4 g8 fis e4 |
    e4 e e e8 e | e4 e e e | fis8 fis fis fis fis4 fis4 |
    g4 g g g8 g | a4 a8 a a4 a8 a |
    b4 b b fis8 fis | g4 g a a8 a | g4 fis e e |
    \bar"||"
}

akkordeRefrain = \chordmode {
    e1:m | b1:7 | a2:m e2:m | b1:7 | e1:m | a1:m |
    b1:7 | e1:m | a1:m | b1:7 | e1:m | a1:m | b1:7 | e1:m |
    a1:m | b2:7 e2:m |
}
notenRefrain = {
    b8 b b b b b b b | b fis fis4~ fis4. fis8 |
    a8 a a a b4 b | b1 | b2 b | c4.( b8) a2 |
    b4 b8 b g4( fis) | e1 | e2 e4 e | fis2 fis |
    b4 b b b | c4. b8 a2 | b8 b b b g4 fis | e2. e4 |
    a2 e4. e8 | e4( dis) e2 |
    \bar"||"
}

akkordeZwischenspiel = \chordmode {
    a1:m | e1:m | a1:m | e1:m | a1:m | e1:m | b1:7 | b1:7 | b1:7 |
}
notenZwischenspiel = {
    c4. b8 c4 e | g4. e8 g4 b | a4. g8 a4 g | e2.. e8 |
    a4 a a e | g2. g8 a | b4 b8 b b4 b | b1 |
    \bar"||"
}

akkordeVersB = \chordmode {
    
}
notenVersB = {
    e4 | g2 e | a4 a a( e) | fis4 fis fis2 |
    b4 b8 b g( fis e4) | e4 e e e | e e8 e e4. e8 |
    fis4 fis8 fis fis4 fis8 fis | g4 g g2 |
    a4 a8 a a4 a | b b8 b b4 fis fis |
    g4 g a a | g fis e e |
    \bar"||"
}

akkordeEnde = \chordmode {
    a2:m e2:m | e1:m | b1:7 | e1:m |
}
notenEnde = {
    c4. b8 e4 g | b4. g8 e4 g | <g b>4. <f a>8 <g b>4 <f dis> | <f e>1 |
    \bar"|."
}

\score {
    <<
        \new ChordNames { 
            \set chordChanges = ##t \akkordeVorspiel \akkordeVersA \akkordeVorspiel \akkordeRefrain \akkordeZwischenspiel 
        }
        \new Voice { 
            \global \relative c' \notenVorspiel \relative c'' \notenVersA \relative c' \notenVorspiel \relative c'' \notenRefrain \relative c' \notenZwischenspiel 
        }
        \addlyrics { \pusherVorspiel \textA \pusherVorspiel \textRefrain }
    >>
}