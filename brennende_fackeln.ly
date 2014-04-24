\version "2.13.3"

\header {
    title = "Brennende Fackeln"
    composer = "Esther Judith Becker"
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
    b4 g2 g4 | c2 c4 c | d2. r4 | fis4 fis fis fis fis 
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