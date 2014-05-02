\version "2.13.3"

\header {
    title = "Am kristallinen Meer"
    composer = "Esther Judith Becker, 2010"
}

global = {
    \key c \major
    \tempo 4 = 100
}

akkorde = \chordmode {
    a8:m a1:m d2:m a2:m a1:m
    e2 a2:m f1 g2 c2
    d2:m e2 a1:m a1:m a1:m
    d1:m d1:m g1 g1
    c1 e1 a1:m a1:m
    d1:m d1:m g1 g1
    e1 e1 a1:m d2:m a2:m
    a1:m e2 a2:m f1
    g2 c2 d2:m e2 a1:m a1:m
    a1:m d1:m d1:m g1
    g1 c1 e1 a1:m
    a1:m d1:m d1:m g1 g1 e1 e1
    
    a1:m d2:m a2:m a1:m e2 a2:m f1
    g2 c2 d2:m e2 a1:m a1:m d2:m 
    a2:m a1:m e2 a2:m f1 g2 c2
    d2:m e2 a1:m
}

text = \lyricmode {
    Der Herr kommt, A -- men,
    auf den Wol -- ken, A -- men.
    Je -- des Au -- ge wird Ihn seh'n, A -- men.
    In wei -- ßen Klei -- dern ste -- hen sie
    im Tem -- pel, die sich rein -- ge -- wa -- schen ha -- ben
    durch das Blut des Herrn.
    Nie mehr hun -- gern sie und nie mehr dürs -- ten sie.
    Vor dem Thron des Herrn die -- nen sie.
    Das Lamm, A -- men, ist ihr Hir -- te, A -- men.
    Er führt sie zum Was -- ser des Le -- bens, A -- men.
    Am kris -- tal -- li -- nen Meer er -- klingt Har -- fen -- mu -- sik,
    ei -- ne gro -- ße Schar singt ein neu -- es Lied.
    Als Sie -- ger sin -- gen sie das Lied des Mo -- se
    und das Lied des Lam -- mes.
    
    Hei -- lig, A -- men, bist Du Herr, A -- men.
    Ge -- recht sind Dei -- ne We -- ge, A -- men.
    A -- do -- nai, A -- men, El -- Shad -- dai, A -- men,
    Al -- le Völ -- ker wer -- den Dich lo -- ben, A -- men.
}

noten = {
    \partial 8 e8 | a4.( e8) e2 | f4.( g16 f16) e2 | c4. d8 e4. e8 |
    d4.( e8) e2 | c'4. b8 b( a) a g | a4.( g8) g2 |
    f2( gis) | a2. e4 | a e e d | e d e2 |
    a4 a8( e) f2~ | f2 r2 | d4 d d c | b b c d |
    e4 e e d | e2. r4 | a4 e e d | e e a a |
    a4 f f2 | r2 d4 d | d c b2 | d e4( f) |
    e1( | gis2.) r8 gis8 | a4.( e8 e2) | f4.( g16 f16) e2 |
    c4. d8 e4. e8 | d4.( e8) e2 | c'4. b8 b a a g |
    a4 a8( g) g2 | f2( gis2) | a2. e4 | a4 e e d |
    e4 e a2 | a4 f e8 f4.~ | f2 r2 | d4 d d c |
    b2 c4 d | e2 e4( d) | e2. e4 | a e e d |
    e4 e a a | a8( f) f2. | r2 d4 d | d c b2( | d2 e4 f) | e1( | gis) |
    
    a4.( e8) e2 | f4.( g16 f16) e2 | c4. d8 e2 |
    d4.( e8) e2 | c'4.( b8) b a a g | a4.( g8) g2 |
    f2( gis) | a2. r4 |
    a4. e8 e2 | f4.( g16 f16) e2 | c4. d8 e2 |
    d4.( e8) e2 | \repeat volta 2 {c'4. b8 b a a g | a4 a8( g8) g2 |
        f2( gis) | a1 |}
    \bar"|."
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