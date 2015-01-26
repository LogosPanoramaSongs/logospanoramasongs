\version "2.13.3"

\header {
  title = "Der Himmel hat sich aufgetan"
  composer = "Esther Judith Becker, 2010"
}

global = {
  \key a \major
  \time 4/4
  \tempo 4 = 110
}

textA = \lyricmode {
    \set stanza = "Vers 1: "
    Herr, Du hörst was ich sa -- ge,
    Du siehst wo ich hin ge -_ he,
    weißt, was ich den -_ ke aus der Fer -- ne.
    Du weißt wann ich auf ste -_ he,
    siehst, wenn ich mich hin le -_ ge,
    Dei -- ne Hän -- de ü -- ber mir,
    und Dein Geist in mir.
}
textB = \lyricmode {
    \set stanza = "Vers 2: "
    Als ich im Ver -- bor -- genen war,
    da _ warst _ Du mir schon nah.
    Herr, Du hast mich be -- wahrt im Mut -- ter -- leib.
    Mei -- ne form -_ lo -- se Ge -- stalt
    war be -- glei -- tet von Dei -- ner Hand.
    In _ Dei -- nem Buch _ stand all _ mei -- ne Zeit.
}

textRefrain = \lyricmode {
    \set stanza = "Refrain: "
    Ich kann mich nicht ver -- ber -- gen vor Dir;
    wo -- hin ich auch ge -- he, Du folgst mir.
    Wenn ich sa -- ge, „Nacht um -- hüllt mich!“,
    die Fin -- ster -- nis ist doch so strah -- lend
    wie das Licht.
    Die Dun -- kel -- heit leuch -- tet so wie der Tag.
    Der Him -- mel hat sich auf -- ge -- tan.
    Him -- mel hat sich auf -- ge -- tan.
}

akkorde = \chordmode {
    a1 | e1 | a1 | a1 | d1 | a1 |
    d1 | a1 | e1 | a1 | a1 | e1 | a1 |
    a1 | d1 | a1 | d1 | a1 | e1 | a1 |

    a1 | d1 |
    e1 | e2 a2 | a1 | a1 | d1 |
    e1 | e1 | s1 | a1 | a1 | a1 |
    d2 e2 | a2. 
    \repeat volta 3 { \partial 4 a4 |} \alternative { { a1 | d2 e2 | a1 |} { a1 | e1 | a1 | } }
}

noten = {
    \phrasingSlurDotted
    cis4 cis cis cis | d2 d4( gis,) | a2. r4 |
    e'4\( e\) e e | fis2 fis4\( e\) | e2. r4 |
    fis2 gis4 a | a4.\( e8\) e2 | d4 cis b4.( a8) a2. r4 |
    cis4 cis cis\( cis\) | d2 d4\( gis,\) | a2. r4 |
    e'4 e e e | fis2 fis4\( e\) | e2. r4 |

    fis4\( fis\) gis a | a4.\( e8\) e2 | d4\( cis\) b4. a8 | a2. r4 |
    \bar"||"
    
    %\break
    a'4 a8 a a4 a |
    a a8 gis fis4. r8 |
    e8 e e e e4 e8 e | gis4.( b8) a4. r8 |
    a4 a a a | a4 a a( e) | fis2. r8 fis8 |
    gis4 gis gis gis | gis b cis cis~ | cis4. r8 cis4 b8( a) |
    a2. r8 a8 | a4 a a4. r8 | a4 a a e8 e8 |
    fis2( gis4. a8 | a2 a8) r8 \repeat volta 3 { \partial 4 a4 |
    } \alternative { {a4 a a a | a2 gis | a2. r4 |} {cis4 cis cis d | b2. a4 | a2. r4 |} }
    \bar "|."
}

\score {
  <<
    \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
    \new Voice { << \global \relative c' \noten >> }
    \addlyrics { \textA \textRefrain }
    \addlyrics { \textB }
  >>
}

\score {
  <<
      \new ChordNames { \set chordChanges = ##t \germanChords \unfoldRepeats { \akkorde  } }
      \new Voice { << \global \relative c' \unfoldRepeats { \noten } >> }
  >>
  
  \midi {
    \context {
      \Score
    }
  }
}