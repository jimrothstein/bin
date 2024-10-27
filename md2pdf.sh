#!/bin/zsh

# PURPOSE:    produce pdf from arbitrary ascii file, with minimum fuss (vs quarto)

# pandoc <file_to_print> <pdf_file)

pandoc "$1" \
    -f markdown \
    # --include-in-header chapter_break.tex \
    -V linkcolor:blue \
    #-V geometry:a4paper \
    -V geometry:margin=2cm \
    #-V mainfont="DejaVu Serif" \
    #-V monofont="DejaVu Sans Mono" \
    --pdf-engine=lualatex \
    -o "$2"

