#!/bin/bash

# to be called as:
#   >>> ./create.sh 2 "testing github integration into create" > logs/ouput.log

prefix="ms_"
ext="pdf"
output=${prefix}${1}.${ext}
lib=lib/userguide.bib

echo "VERSION NUMBER: " $1 "PRODUCING FILE versions/${output}"
echo "GIT COMMIT MESSAGE: " $2

pandoc --verbose --filter pandoc-fignos --filter pandoc-tablenos --filter pandoc-citeproc  --lua-filter=scholarly-metadata.lua --lua-filter=author-info-blocks.lua --bibliography ${lib} --pdf-engine=xelatex --csl=templates/nature.csl --template=templates/template.latex manuscript.md -f markdown -t latex -s -o versions/${output} --listings
# git add versions/ms_${1}.pdf

# pandoc --verbose --citeproc  --bibliography lib/ms.bib --biblatex manuscript.md -f markdown -s -o versions/pnas_accepted_${1}.docx
# git add versions/ms_${1}.docx

echo "DONE"
# git commit -am "$2"
# git push

