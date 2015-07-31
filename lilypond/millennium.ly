\version "2.12.3"

\header {
  title = "Millennium"
  composer = "Esther Judith Becker, 2011"
}

global = {
  \key b \major
  \time 4/4
  \tempo 4 = 115
}
from = b
to = c

notenStropheEins = {
  dis4. cis8 dis4 fis4 | dis4. cis8 dis4 fis8 fis8 |
  gis4 fis4 e4 dis4 | cis2. cis4 |
  e4.( dis8 ) e4 dis4 | dis2 dis2 | gis4 gis4 gis4 b4 |
  ais1 | dis,4. cis8 dis4 fis4 | dis4. cis8 dis4 fis4 |
  gis4 fis4 e4 dis4 | cis2. cis4 |
  e4.( dis8 ) e4 dis4 | dis2 dis2 | fis4 fis4 fis4 ais4 | b1 | \bar "|."
}
notenStropheZwei = {
  dis4. cis8 dis4 fis4 | dis4. cis8 dis4 fis4 gis4 fis4 e4 dis4 cis2. r8 cis4
  e4. dis8 e4 dis4 dis2 dis2 gis2 gis4 ( b4 ) ais1 \bar ""
  dis,4. cis8 dis4 fis4 dis4. cis8 dis4 fis4 gis4 fis4 e4 dis4 cis2. r4 \bar ""
  e4. dis8 e4 dis4 dis4 dis4 dis4 dis4 fis4 fis8 fis8 fis4 ais4 b1 \bar "|."
}
notenStropheDrei = {
  dis4. cis8 dis4 fis4 dis4. cis8 dis4 fis8 fis8 gis4 fis4 e4 dis4 cis2. r8 cis4
  e4.( dis8 ) e4 dis4 dis2 dis2 gis4 gis4 gis4 b4 ais1 \bar ""
  dis,4. cis8 dis4 fis4 dis4. cis8 dis4 fis4 gis4 fis4 e4 dis4 cis2. r8 cis4 \bar ""
  e4.( dis8 ) e4 dis4 dis2 dis2 fis4 fis4 fis4 ais4 b1 \bar "|."
}
notenStropheVier = {
  dis4. cis8 dis4 fis4 dis4. cis8 dis4 fis4 gis4 fis4 e4 dis4 cis2. r8 cis4
  e4. dis8 e4 dis4 dis2 dis2 gis2 gis4 ( b4 ) ais1 \bar ""
  dis,4. cis8 dis4 fis4 dis4. cis8 dis4 fis4 gis4 fis4 e4 dis4 cis2. r4 \bar ""
  e4. dis8 e4 dis4 dis4 dis4 dis4 dis4 fis4 fis8 fis8 fis4 ais4 b1 \bar "|."
}

akkordeVersEins = \chordmode {
  b1 b1 e1 fis1 e1
  b1 e1 fis1 b1 b1
  e1 fis1 e1 b1 fis1
  b1 

}

versStropheEins = \lyricmode {
  \set stanza = #"Vers 1: "
  Bei der ers -- ten Auf -- er -- steh -- ung er -- bebt die gan -- ze Welt. Der 
  Herr al -- ler Her -- ren kommt vom Him -- mels -- zelt. 
  Auf dem Öl -- berg wird Er ste -- hen wie Er es ver -- sprach.  In 
  Zion wird Er herr -- schen tau -- send Jah -- re lang.
}
versStropheZwei = \lyricmode {
  Was -- ser -- strö -- me flies -- sen durch das dür -- re Wüs -- ten -- land. Das
  To -- te Meer, das Salz -- meer wird ge -- heilt.
  Es wird vie -- le Tie -- re ge -- ben wie im Mit -- tel -- meer.
 Blu -- men blü -- hen, Bäu -- me grü -- nen um das ge -- heil -- te Meer.
}
versStropheDrei = \lyricmode {
  Läm --  mer und Lö -- wen, Pan -- ther und Bä -- ren, al -- le wei -- den.
  Ein klei --  ner Jun -- ge kann sie hü -- ten.
  Blin -- de se -- hen, Tau -- be hö -- ren, der Stum -- me singt ein Lied.
 Un -- ter all den Völ -- kern gibt es kei -- nen Krieg.
}
versStropheVier = \lyricmode {
  Es wird ei -- ne Stra -- ße geben, die nach Zi -- on führt.
  Die der Herr be -- freit hat kom -- men zu -- rück. Die
  Zeit der Sor -- gen und der Schmer -- zen wird für im -- mer ver -- gehn;
 Je --  der wird die Herr -- lich -- keit uns'res Got -- tes sehn.
}

% fuer die pdf-ausgabe
% bookpart teilt auf einzelne Seiten zu
%\bookpart {
\score {
    <<
        \new ChordNames { \set chordChanges = ##t \germanChords \transpose \from \to { \akkordeVersEins } }
        \new Voice { << \transpose \from \to { \global \relative c'' \notenStropheEins } >> }
        \addlyrics { \versStropheEins }
    >>
}
