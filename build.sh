#!/bin/bash

VENV="/home/chris/lib/virtualenvs/hieroglyph"


mkdir -p source/_static

for ex in example.*; do
    if [ -e "$ex" ]; then
        ln -sf "../../$ex" "source/_static/$ex"
    fi
done

for img in *.png *.svg; do
    if [ -e "$img" ]; then
       ln -sf "../../$img" "source/_static/$img"
    fi
done

for css in *.css; do
    if [ -e "$css" ]; then
       ln -sf "../../$css" "source/_static/$css"
    fi
done

source "$VENV/bin/activate"
make slides
ln -sf build/slides/index.html
