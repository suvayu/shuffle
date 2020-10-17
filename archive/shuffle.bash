#!/bin/bash

# this requires manual edit to work with new files

declare -a layout=(1 4 5 8 3 2 7 6) order

# 163 pages, 8 pages/sheet, total 20 sheets: $(bc <<< "int(163/8)")
for i in {0..19};
do
    for j in ${layout[@]};
    do
        order+=($((j+ i*8)));
    done;
done

# pdftk A="$input" B=blank.pdf \
#     cat ${order[@]} 161 B1 B1 B1 163 162 \
#     output "${input%.pdf}_reordered.pdf"

declare input="$1" empty=blank.pdf

printf -v pages "%s," ${order[@]} # there's a trailing comma, which is used below
qpdf $input --pages $input ${pages}161 $empty 1,1,1 $input 163,162 \
     -- "${input%.pdf}_reordered.pdf"
