#!/bin/sh
# pandoc -s cv_en_john_doe.md -o cv_en_john_doe.docx
python3 md_to_tex.py cv.md english
sed -i 's/\[scale=0.75\]{geometry}/\[scale=0.85\]{geometry}/' cv.tex
pdflatex cv.tex
