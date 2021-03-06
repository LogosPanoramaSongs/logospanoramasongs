\version "2.13.3"

\header {
    title = "Weit überm Himmelszelt"
    composer = "Esther Judith Becker"
}

global = {
    \key bes \major
    \tempo 4 = 100
}

akkorde = \chordmode {
    g1:m c1:m d1:7
    g1:m c1:m c1:m
    f1:7 bes1 g1:m
    c2:m d2:7 d1:7
    d2:7 g2:m g1:m
    c1:m f1:7 bes1
    g1:m c1:m
    d1:7 g1:m bes1
    es1 f1:7
    d1:7
    
    g1:m c1:m f1:7 bes1 g1:m c1:m d1:7 g1:m
}

text = \lyricmode {
    Gott führt durch Mee -- res -- flu -- ten,
    Er ist da im Feu -- er -- o -- fen.
    Bis in die Lö -- wen -- gru -- be reicht Sei -- ne Hand.
    Nie wird Er mü -- de,
    nie wird er matt, bis Er für Ge -- rech -- tig -- keit ge -- sorgt hat.
    Got -- tes Licht und Sei -- ne Wahr -- heit lei -- ten uns
    zu Sei -- nem hei -- li -- gen Berg,
    zu Sei -- nem Wohn -- ort weit,
    weit ü -- berm Him -- mels -- zelt.
    Wir sprin -- gen ü -- ber Mau -- ern,
    lau -- fen ü -- ber Was -- ser,
    sprin -- gen wie die Hir -- sche,
    flie -- gen wie die Ad -- ler.
    
    Got -- tes Licht und Sei -- ne Wahr -- heit lei -- ten uns
    zu Sei -- nem hei -- li -- gen Berg,
    zu Sei -- nem Wohn -- ort weit,
    weit ü -- berm Him -- mels -- zelt.
}

noten = {
    g4 g8 a bes4 a | c4 c2. | d8 d d d es4 d |
    bes4 bes2. | g'4 g8 g g4 es | es d c2 |
    f4 f f4.( c8 | d1) | g4 a8 bes bes4 g |
    g4 a8 bes a2 | a8 a a a a a a a |
    c4( bes) g2 | d8 d d d d d d d |
    es4 d8 c( c4.) c8 | f4 f f c8 es | d1 |
    g4 g8 g g4 g | bes( a8 g)( g2) |
    a4 a8 a c4 bes | g2. r8 d8 | d d d d es d4. |
    g8 g g g a8 g4. | f8 f f f f 4 f |
    a8 a a bes c4 bes |
    
    d,8 d d d d d d d |
    es4 d8 c( c4.) c8 | f4 f f c8 es | d1 |
    g4 g8 g g4 g | bes( a8 g)( g2) |
    a4 a8 a c4 bes | g1 |
    \bar"|."
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
	\new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
	\new Voice { << \global \relative c' \noten >> }
    >>
    
    \midi {
	\context {
	    \Score
	}
    }
}