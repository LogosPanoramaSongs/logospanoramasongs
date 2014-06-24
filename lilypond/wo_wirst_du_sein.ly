\version "2.13.3"

\header {
    title = "Wo wirst du sein?"
    composer = "Esther Judith Becker, 2012"
}

global = {
    \key c \major
    \tempo 4 = 110
}

akkorde = \chordmode {
    r8 a1:m a1:m e1
    e2 a2:m a1:m
    d1:m d1:m g1 c1
    a1:m f1 e1 a1:m
    a1:m a1:m
    e1 e2 a2:m a1:m
    d1:m d1:m g1 c1
    a1:m f1 e1 a1:m
    f1 g2 c2 c1 a1:m
    f1 g2 c2 g1
    c1 f2 g2 c1
    a1:m f1 g1 c1
    
    a1:m f1 g1 c1
    a1:m a2:m g2 f1 c1
    f1 g1 e1 a1:m
    a1:m d1:m g1
    c1 f1 c1
    e1 a1:m
    a1:m f1 g1 c1
    a1:m f1 g1 c1
    
    f1 g2 c2 c1 a1:m
    f1 g2 c2 g1
    c1 f2 g2 c1
    a1:m f1 g1 c1
    
    a1:m f1 g1 c1
}

text = \lyricmode {
    Um Sa -- lo -- mos gött -- li -- che Weis -- heit zu hö -- ren,
    kam ei -- ne Kö -- ni -- gin aus dem fer -- nen Sü -- den.
    Je -- schu -- a, Got -- tes Sohn, ist vie grö -- ßer als Sa -- lo -- mo.
    Willst du Sei -- ne Weis -- heit hö -- ren,
    willst du zu Ihm kom -- men?
    Ni -- ni -- ves Ein -- woh -- ner glaub -- ten Jo -- nah,
    durch den Pro -- phe -- ten war Gott ih -- nen nah.
    Je -- schu -- a ist viel grö -- ßer als Jo -- nah.
    Willst du Sei -- nen Wor -- ten glau -- ben, willst du dich zu Ihm wen -- den?
    Vie -- le wer -- den kom -- men von Os -- ten und von Wes -- ten,
    von Nor -- den und von Sü -- den und sich im Him -- mel -- reich
    mit Ab -- ra -- ham und Ja -- kob an Got -- tes Tisch set -- zen.
    Oh wo, wo wirst du sein?
    
    oh wo, wo wirst du sein?
    Wenn der Herr wie -- der -- kommt,
    dann wird es so sein
    wie es in den Ta -- gen No -- ahs schon war:
    Sie such -- ten Ihn nicht, sie fan -- den Ihn nicht,
    sie ba -- ten um nichts, sie emp -- fin -- gen nichts und die
    Flut kam ü -- ber sie und die Wel -- len be -- deck -- ten sie.
    Oh wo, wo wirst du sein?
    Oh wo, wo wirst du sein?
    
    Vie -- le wer -- den kom -- men von Os -- ten und von Wes -- ten,
    von Nor -- den und von Sü -- den und sich im Him -- mel -- reich
    mit Ab -- ra -- ham und Ja -- kob an Got -- tes Tisch set -- zen.
    Oh wo, wo wirst du sein?
    
    oh wo, wo wirst du sein?
}

noten = {
    \partial 8 a8 | e'4 e8 d e4 e8 d | a'4 a8 g e4 c |
    e4 e8 e e e e4 | e8 e e d c4 a | r2 r4 r8 a'8 |
    a4 a a e | f2. d8 d | d4 d8 d g4 d | e2. r4 |
    e8 e e d e4 a | a a2. | gis4 gis gis gis | a4 a2. |
    e4 e8 d e4 e8 d | a'4 a8( g) e4 c |
    e4 e8 e e4 e8 e | e4 e8 d c8( a4.) | r2 r4 r8 a'8 |
    a2.( e4) | f2. d8 d | d4 d8 d g4( d) | e2. r4 |
    e8 e e d e4 a | a a2. | gis8 gis gis4 gis gis | a4 a2. |
    a4 b c a | g4( f) e g | c g g g | a4 a2 a4 |
    a4 b c a | g( f) e2 | g4 g8 g g g g g |
    g8 g g g g4 g8 g | c4 c c( b) | c4 c2 r4 |
    c2.( c8 b) | c2. r4 | b4 b b2 | c2. r4 |
    
    c,2.( c8 b) | c2. r4 | b4 b b2 | c2. r4 |
    a4 c b( a) | b c b2 | f'4 c c d | e2. r4 |
    f4 e d c | d( c) b2 | e2 e4 b | c2. r8 a'8 |
    a4 e8 d c4. a'8 | a4 f8 e f4. f8 | d4 d8 d d4 g8 g |
    f4 e e c'8 c | c2. f,4 | e8 e e2 e8 e |
    b'4 b2 e,4 | c4 b4 a2 |
    c2.( c8 b) | c2. r4 | b4 b b2 | c2. r4 |
    c'2.( c8 b) | c2. r4 | b4 b b2 | c2. r4 |
    
    a4 b c a | g4( f) e g | c g g g | a4 a2 a4 |
    a4 b c a | g( f) e2 | g4 g8 g g g g g |
    g8 g g g g4 g8 g | c4 c c( b) | c4 c2 r4 |
    c2.( c8 b) | c2. r4 | b4 b b2 | c2. r4 |
    
    c,2.( c8 b) | c2. r4 | b4 b b2 | c2. r4 |
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