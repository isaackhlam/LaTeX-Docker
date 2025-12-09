#!/bin/sh
docker exec -it latex-env \
    latexmk -pvc -pdf -interaction=nonstopmode src/main.tex

