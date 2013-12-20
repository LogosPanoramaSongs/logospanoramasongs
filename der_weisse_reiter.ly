\version "2.13.3"

\header {
  title = "Der weiße Reiter"
  composer = "Text und Melodie: Dr. Esther Judith Becker"
  opus = "2011"
}

global = {
  \key a \major
  \time 4/4
  \tempo 4 = 120
}

akkorde = \chordmode {
  a1 a1 d1 a1 a1 a1 e1 a1 d1 a1 e1 a1 d1 a1 e1 e2 a2 %16 
  % weine nicht ...
  a1 a1 a1 d1 a1 a1 a1 e1 a1 d1 a1 e1 a1 d1 a1 e1 e2 a2 a1 %35
  % (der) himmel singt ...
  a1 d1 a1 e1
  % source-data next page
  a1 d1 a1 e1 a1 d1 a1 e1 a1 d1 e1 e2 a2 d1
  % sind wie feuerflammen
  a1 d2 e2 e2 a2 d1 a1 d2 e2 e2 a2
  % dies ist das schwert
  a1 d1 e1 e2 a2 d1 a1
  % source-data next page
  d2 e2 e2 a2 d1 a1 d2 e2 a1
}

text = \lyricmode {
  Wer ist wür -- dig, die Sie -- ben Sie -- gel zu 
  öff -- nen? Wer ist wür -- dig? Kannst du mir das
  sa -- gen? Ich wein -- te, als ich sah, dass
  nie -- mand wür -- dig war. Im Him -- mel und auf der
  Er -- de war nie -- mand der wür -- dig ge -- we -- sen wä -- re.
  Wei -- ne nicht, denn Ei -- ner hat ge -_ siegt!
  Er ist wür -- dig, der Nach -- kom -- me Da -- vids. Er ist der
  Kö -- nig, Er ist der Lö -- we aus dem
  Stamm von Je -- hu -- da. Er ist Je -- schu -- a, das
  Lamm, das ge -- op -- fert wur -- de am Al -- tar. Der
  Him -- mel singt „Hal -- le -- lu jah! Eh -- re sei Je -- schu -- a,
  Lö -- we von Je -- hu -- da, Got -- tes Lamm, Je -- schu -- a!“ Dein
  % source-data next page
  Volk ruft: „Ma -- ra -- na -- tha! Kom -- me bald Je -- schu -- a,
  Lö -- we von Je -- hu -- da, Got -- tes Lamm, Je -- schu -- a!“
  Hal -- le -- lu -- jah, Ma -- ra -- na -- tha, Lö -- we von Je -- hu -- da,
  Got -- tes Lamm, Je -- schu -- a! Am Him -- mels -_ zelt er -- 
  scheint ein wei -- ßes Pferd. Der auf ihm sitzt, ist
  treu und wahr -- haf -- tig. Sei -- ne Au -- gen
  sind wie Feu -- er -- flamm -- men, Sei -- ne Stim -- me wie Was -- ser -- flu -- ten.
  Auf sei -- nem Haupt sind vie -_ le _ Kro -- nen,
  aus sei -- nem Mund kommt ein schar -- fes Schwert.
  Dies ist das Schwert der Ge -- rech -- tig -- keit. Die
  Hee -- re des Him -- mels fol -_ gen Ihm nach.
  Sie rei -- ten auf wei -_ ßen _ Pfer -- den in
  % source-data next page
  strah -- lend wei -- ßen Lein -- nen ge -- wän -- dern. Sei -- ne Braut er --
  war -- tet Ihn mit Freu -- de. Der Him -- mel kommt auf die 
  Er -- de.
}

notesMelody = {
  cis4. d8 e4 e4~ | e2. r8 e8 | fis4 fis fis e8 d | 
  e2 e | cis4. d8 e4 e~ | e2. r4 | b4 cis d e | 
  cis2 cis4. cis8 | a'4 a2 a8 a8 | a2. a4 | 
  gis4 gis gis gis | a2. r8 a8 | a4 a~ a8 a8 a8 a8 | 
  a4 a2 a4 | gis4 gis8 gis gis4 gis8 gis | gis4 gis a a~ | a r4 r2 |
  cis,4. d8 e2~ | e4 r2 r8 e8 | fis4 fis fis e8 d8 | e2. r4 |
  cis4. d8 e4 e~ | e2. r4 | b4 cis d e | cis2 cis4 \times 2/3 {a'8 a a} | 
  a4 a~ a8 r8 \times 2/3 {a8 a a} | a4 a~ a8 r8 a8 a | 
  gis2 gis4 gis4 | a a~ a8 r8 \times 2/3 {a8 a a} | a4 a~ a8 r8 a4 |
  a2~ a8 r8 a8 a | gis4 gis gis gis | gis gis a2~ | a4 r2 r8 cis,8 |
  cis8 cis cis cis cis cis cis4 | d8 d d d e8 d4. | 
  cis8 cis cis cis cis8 cis4. | b8 b b cis d b~ b a' | %40
  % source-data next page
  a4 a a8 a a a | a a a a b a4. |
  a8 a a a a8 a4. | gis8 gis gis a b gis4. |
  a8 a a a a a a a | a a a a b a4. |
  a8 a a a a4( b4) | b2.. b8 | cis4 b8 a a4. gis8 |
  a8 gis a gis a2 | e4 e8 e8 e4 e | 
  cis'8 b b a a2 | fis4 fis gis a |
  a8 e e cis e4 e | fis4 fis gis gis | gis gis8 gis8 a4 a |
  fis4 fis8 fis gis4 a | a8 e e cis e4 e |
  fis4 fis8 fis gis4 gis8 gis8 | gis4 gis a2 |
  cis4 b8 a a2 | a8 gis a gis a4. e8 |
  e4 e8 e e4 e | cis'8 b b a a2 |
  fis2 gis4 a8 a | a e e cis e4 e8 e |
  % source-data next page
  fis4 fis gis gis | gis gis8 gis a4 a | fis4 fis gis a |
  a8 e e cis e4 e8 e | a4 a cis b8 a |
  a4 a4 r2 \bar "|."
}

\score {
  <<
    \new ChordNames { \set chordChanges = ##t \germanChords \akkorde }
    \new Voice { \voiceOne << \global \relative c' \notesMelody >> }
    \addlyrics { \text }
    
 %{   \new TabStaff \with { instrumentName = #"guitar" }
    <<
      \set TabStaff.stringTunings = #guitar-tuning
          {
            \stemDown
             \relative c' \notesMelody
          }
      >>%}
  >>
}

\score {
  <<
    %\new Staff \with { midiInstrument = "violin" }
    \new Voice { \voiceOne << \global \relative c' \notesMelody >> }
  >>
  
  \midi {
    \context {
      \Score
    }
  }
}