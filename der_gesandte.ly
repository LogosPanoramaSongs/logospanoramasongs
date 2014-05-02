\version "2.13.3"

\header {
    title = "Der Gesandte"
    composer = "Esther Judith Becker, 2011"
}

global = {
    \key d \major
    \tempo 4 = 110
}

akkorde = \chordmode {
    r8 | b1:m fis1
    fis1 b1:m b1:m
    fis1 fis1 b1:m b1:m
    e1:m fis1 b1:m
    b1:m e1:m fis1
    b1:m b1:m fis1
    fis1 b1:m b1:m fis1
    b1:m
    fis2 b2:m
    
    b1:m b1:m fis1 fis1 b1:m
    b1:m fis1 fis1 b1:m b1:m
    e1:m fis1 b1:m b1:m e1:m
    fis1 b1:m b1:m fis1 fis1
    b1:m b1:m fis1 b1:m fis2 b2:m
}

text = \lyricmode {
    Der Herr hat mich zu euch ge -- sandt,
    mit Sei -- nem Geist bin ich ge -- salbt,
    Frei -- heit zu ver -- kün -- di -- gen,
    Hei -- lung für die Her -- zen.
    Statt Ei -- sen und Kup -- fer
    brin -- ge ich euch Gold und Sil -- ber,
    statt Trau -- er und Mut -- lo -- sig -- keit
    Freu -- den -- öl und Ruh -- mes -- ge -- wand.
    Bäu -- me der Ge -- rech -- tig -- keit,
    Pflan -- zun -- gen des E -- wi -- gen,
    so wer -- det ihr ge -- nannt.
    Die Welt wird Ihn an euch er -- ken -- nen.
    
    Die Ru -- i -- nen der Ver -- gan -- gen -- heit
    wer -- den zur Pracht der Ge -- gen -- wart.
    Dei -- ne To -- re sind ein Ruhm,
    dei -- ne Mau -- ern Ret -- tung.
    Mit Ge -- wän -- dern der Ret -- tung und des Heils
    hat Er mich an -- ge -- zo -- gen,
    mit dem Man -- tel der Ge -- rech -- tig -- keit
    hat Er mich um -- ge -- ben.
    Das Licht der Son -- ne brauchst du nicht,
    der Herr ist dein ew -- ges Licht.
    Die Zeit der Schmer -- zen geht vor -- bei,
    der Ge -- sand -- te des Herrn macht dich frei.
}

noten = {
    \partial 8 b8 | d4 d d e | d8 cis cis2 r8 cis8  |
    e4 e e fis | e8 d d2 r4 | d4 d d e |
    d8 cis cis2 r4 | e4 e e fis | e8( d) d2 r4 | fis2 b4 fis4 |
    g8( fis) g( fis) g2 | fis8 fis fis fis fis4 e | d4.( cis8) b2 |
    fis'2 b4 fis | g8 fis g fis g2 | fis8 fis fis fis fis4 e8 e |
    d4.( cis8 b2) | d4 d d e | d8 cis cis2 r4 |
    e4 e e fis | e8 d d2 r4 | d2 d4 e |
    d8 cis cis2 r8 cis8 | fis4 fis fis4. fis8 |
    fis8 e d( cis) b2 |
    
    r2. b8 cis | d4 d d e | d8 cis cis2 r4 |
    e4 e8 e8 e4 fis | e8 d d2 r4 | d4 d d e |
    d8 cis cis2 r4 | e4 e e fis | e8( d) d2 r4 | fis4 fis4 b4 fis8 fis8 |
    g8 fis g fis g4. g8 | fis4 fis fis4 e | d4.( cis8) b2 |
    fis'4 fis b4 fis | g8 fis g fis g2 | fis4 fis fis4 e4 |
    d4.( cis8) b4. b8 | d4 d d e | d8 cis cis2 r8 cis8 |
    e4 e e( fis) | e8 d d2 r8 b8 | d4 d d4 e |
    d8 cis cis2 d8 e | fis4 fis8 fis8 fis2 |
    fis8( e) d( cis) b2 |
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
        \new Voice { \voiceOne << \global \relative c' \noten >> }
        \addlyrics { \text }
    >>
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
        \new Voice { \voiceOne << \global \relative c' \noten >> }
    >>
    
    \midi {
        \context {
            \Score
        }
    }
}