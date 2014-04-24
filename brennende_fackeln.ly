\version "2.13.3"

\header {
    title = "Brennende Fackeln"
    composer = "Esther Judith Becker, 2011"
}

global = {
    \key g \major
    \time 4/4
    \tempo 4 = 100
}

akkorde = \chordmode {
    g1 c1 d1:7
    g1 c1 d1 d1
    g1 c1 g1 d1
    g1 c1 d1 g1
    c1 d1:7 g1 d1
    c1 d1 g1
    c1 d1 g1
    d1 g1 c1 g1 d1
    d2 g2 g1 c2 g2
    d1:7 g1 g1 c1
    d1 g1 c1
    d1 g1 c2 d2:7 g1
}

text = \lyricmode {
    Durch ei -- ne of -- fe -- ne Tür bkick -- te ich in den
    Him -- mel. Ich sah ei -- nen Thron ähn -- lich wie Sa -- phir im
    Him -- mel. Der da -- rauf saß, strahl -- te wie ein Di -- a --
    mant, leuch -- te -- te wie ein Kar -- ne -- ol. Ein Re -- gen -- bo -- gen war
    um den Thron. Blit -- ze, Don -- ner und Stim -- men Ka -- men aus dem Thron.
    Ein Kris -- tall -- kla -- res Meer war vor dem Thron und
    sie -- ben bren -- nen -- de Fak -- keln, die sie -- ben Geis -- ter des
    Herrn: Der Geist der Weis -- heit und der Kraft, der Geist der Ein -- sicht
    und der Er -- kennt -- nis, der Geist des Ra -- tes, der Geist des Herrn, der Geist der Furcht vor dem Herrn. Ru -- ach hoch -- mah, Ru -- ach bi -- nah,
    Ru -- ach et -- zah, Ru -- ach gvu -- rah, Ru -- ach da -- at,
    Ru -- ach, jir' -- at A -- do -- nai, Ru -- ach A -- do -- nai.
}

notesMelody = {
    b2 b4 c4 | e4 d8 d e2 | d8 d d4 c a |
    b4 g2 g4 | c2 c4 c | d2. r4 | fis8 fis fis fis fis4 fis |
    a4 a( a4.) r8 | e4 e fis( g) | d2.. r8 | fis8 fis fis fis a4 fis |
    g2.. r8 | e8 e e4 d8 d fis8 g | d2. b4 | d4 d d c8 b |
    e4 e e2 | a4 a a a8 a | a4 a b a | a g a2~ | a2 r4 d,4 |
    e4 e e e | e d d c | d1 | r2 r4 d4 |
    e4 e e e8 e | fis 4 fis2 fis4 | g4 g g g8 g |
    a2. r8 g8 | g4 g g d | e fis g r8 g8 | a4 a a a |
    b b8 a a4 g8 g | g4 g g d8 d | e4 fis g4. g8 |
    a4 a a g8 fis | g2. r4 | b,4 b8 b b2 | c4 c8 c c2 |
    d4 d8 d d2 | g4 g8 g g2 | g4 g8 g g2 |
    a4 a8 a a4 g8 fis | g2.. r8 | c4. b8 a( g) fis4 | g1 | \bar"|."
}

\score {
    <<
	\new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
	\new Voice { \voiceOne << \global \relative c' \notesMelody >> }
	\addlyrics { \text }
    >>
}

\score {
    <<
	\new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
	\new Voice { \voiceOne << \global \relative c' \notesMelody >> }
    >>
    \midi {
	\context {
	    \Score
	}
    }
}