\version "2.13.3"

\header {
    title = "Als die Zeit erfüllt war"
    composer = "Esther Judith Becker, 2012"
}

global = {
    \key bes \major
    \time 4/4
    \tempo 4 = 100
}

text = \lyricmode {
    Als die Zeit er -- füllt war,
    wur -- de Got -- tes Sohn Je -- schu -- a von ei -- ner Frau ge -- bo -- ren,
    um als Mensch auf der Er -- de zu le -- ben und das Werk
    der Er -- lö -- sung zu voll -- brin -- gen.
    Als die Zeit er -- füllt war, wur -- de Got -- tes Sohn Je -- schu -- a
    von ei -- ner Frau ge -- bo -- ren, da -- mit wir Got -- tes Kin -- der wer -- den
    und Got -- tes Reich für al -- le -- zeit er -- er -- ben.
    Je -- schu -- a: Frei -- heit für Ge -- fan -- ge -- ne.
    Je -- schu -- a: Trost für Ver -- zwei -- fel -- te.
    Je -- schu -- a: Licht für al -- le Völ -- ker.
    Je -- schu -- a: Ret -- ter und Er -- lö -- ser.
}

akkorde = \chordmode {
    g2:m f2:7 | bes1 | es2 f2:7 |
    bes1 | c1:m | bes1 | g1:m |
    c1:m | d1:7 | g2:m es2 |
    bes1 | f2:7 bes2 | bes2 g2:m |
    
    g2:m f2:7 | bes1 | es2 f2:7 |
    bes1 | c1:m | bes1 | g1:m |
    c1:m | d1:7 | g2:m es2 |
    bes1 | f2:7 bes2 | g1:m |
    c1:m | f1:7 | d1:7 |
    g1:m | es2 bes2 | g1:m |
    c1:m | f1:7 | d1:7 |
    g2:m es2 | f2:7 bes2 |
}

noten = {
    d4 d f4. es8 | d4 d2. | g8 g g g a4. bes8 |
    bes4 f2. | g4 g8 g g4. f8 | d4 d2. | bes'8 a bes2. |
    c4 c c bes8 bes | a4 a2. | bes4 bes bes2 |
    bes4 bes bes bes | a a bes bes | r1 |
    
    d,4 d f4. es8 | d4 d2. | g8 g g g a4. bes8 |
    bes4 f2. | g4 g8 g g4. f8 | d4 d2. | bes'8 a bes2. |
    c4 c c bes | a a2. | bes4 bes8 bes bes4. bes8 |
    bes4 bes bes2 | a4 a bes4. bes8 | d4.( bes8) g2 |
    c4 c c4. bes8 | a4 a8 a( a4.) a8 | fis4.( g8) a2 |
    bes2 g4 g | f es d4. bes'8 | d4.( bes8) g2 |
    c4 c c bes | a8 a2( a8 a8) a8 | fis4.( g8) a2 |
    bes4 bes bes bes | bes4( a) bes2 |
    \bar"|."
}

\score {
    <<
        \new ChordNames { \set chordChanges = ##f \akkorde }
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