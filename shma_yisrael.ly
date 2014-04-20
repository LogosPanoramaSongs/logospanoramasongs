\version "2.13.3"

\header {
    title = "Sh'ma Yisrael"
    composer = "Esther Judith Becker"
}

global = {
    \key c \major
    \time 4/4
    \tempo 4 = 120
}

akkordeA = \chordmode {
    c1 c1 r1 r1 r1
    f1 g1 c1 f1 g1 c1 f1
    g1 f1 g1 c1 c1
    c1 f1 c1 g1
    c1 f1 c1
    g1 c1
}

akkordeB = \chordmode {
    c1 c1 c1
    c1 f1 g1 c1
    f1 g1 c1 f1
    g1 f1 g1 c1
    c1 c1 f1 c1
    g1 c1
    f1 c1 g1 c1
}

textA = \lyricmode {
    Sh'ma Yis -- ra -- el, A -- do -- na -- i sha -- lom, Ma -- lach ha -- Go --
    el Ben El -- yon, Je -- schu -- a Ma -- lach Pa -- nav,
    Ma -- lach ha -- B' -- rit Ben E -- lo -- him. Va ro -- mer Ya -- a --
    hav: Mah na -- rah ha -- ma -- kom ha -- zeh! Ein zeh ki -- im Beit
    E -- lo -- him! Mah no -- rah ha -- ma -- kom ha -- zeh!
    Zeh sha -- ar ha -- sha -- ma -- yim!
}
textB = \lyricmode {
    Hö -- re Is -- ra -- el, der Herr ist Frie -- den,
    der Sohn des Höchs -- ten kam, uns zu er -- lö -- sen, Je --
    schu -- a, Mitt -- ler von Got -- tes Ge -- gen -- wart,
    der Ge -- sand -- te des Bun -- des ist der Sohn Got -- tes.
    Und Ja -- kob sprach: „Wie ehr -- ge -- bie -- tend is die -- ser Ort!
    Hier ist die Wohn -- stät -- te Got -- tes! Wie
    ehr -- furcht -- ge -- bie -- tend ist die -- ser Ort! hier ist das Tor des
    Him -- mels!“
}

notesMelodyA = {
    g2 c4 b | c1 | c4 d e d8 c | e1 | g4 g g g |
    a1 | g2 g | c2. c4 | c1 | d2. c4 | c2. b4 | a1 |
    g4 g g g | a1 | g2 g4 g4 | g1 | g,4 g8 g c4 b |
    c1 | a'4. a8 a4 b8 c | c4. g8 g2 | f4 f8 f f4. f8 |
    f8 e e2. | a4. a8 a4 b8 c | c4. g8 g2 |
    b4 b8 b b4 d | d8 c4.( c2) |
}

notesMelodyB = {
    g4 g c b | c1 | c4( d) e( d) c8 | e2 e2 |
    g2 g4 g | a2 a | g4 g g g | c2 c4 c |
    c1 | d1 | c4 c8 c c4 b | a4. a8 a2 |
    g4 g g g8 g | a2 a | g4 g g2 | g2 g |
    g,2 c4 b | c2.. a'8 | a4 a8 a a4 b8 c | c4. g8 g2 |
    f4 f8 f f4 f8 f | f4 f( f4.) a8 |
    a4 a8 a a4 b8 c | c4. g8 g2 | b4 b8 b b4 d |
    d4 c2. | 
}

\score {
    <<
	\new ChordNames { \set chordChanges = ##t \akkordeA }
	\new Voice { \voiceOne << \global \relative c' \notesMelodyA >> }
	\addlyrics { \textA }
    >>
}

\score {
    <<
	\new ChordNames { \set chordChanges = ##t \akkordeB }
	\new Voice { \voiceOne << \global \relative c' \notesMelodyB >> }
	\addlyrics { \textB }
    >>
}

\score {
    <<
	\new ChordNames { \set chordChanges = ##t \akkordeA }
	\new Voice { \voiceOne << \global \relative c' \notesMelodyA >> }
    >>
    
    \midi {
	\context {
	    \Score
	}
    }
}

\score {
    <<
	\new ChordNames { \set chordChanges = ##t \akkordeB }
	\new Voice { \voiceOne << \global \relative c' \notesMelodyB >> }
    >>
    
    \midi {
	\context {
	    \Score
	}
    }
}