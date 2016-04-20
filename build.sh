#!/bin/bash

VENV="/home/chris/lib/virtualenvs/hieroglyph"


mkdir -p source/_static

for ex in example.*; do
    ln -sf ../../$ex source/_static/$ex
done

for png in *.png *.svg; do
    ln -sf ../../$png source/_static/$png
done

source "$VENV/bin/activate"
make slides
ln -sf build/slides/index.html
