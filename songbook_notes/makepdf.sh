#!/bin/bash

lilypond-book ./logospanoramasongs_notes_a.tex --output ./logospanoramasongs_notes_a
cd logospanoramasongs_notes_a && pdflatex logospanoramasongs_notes_a.tex
