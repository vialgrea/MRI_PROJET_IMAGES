#!/bin/bash
[ -e "result.bin" ] && rm result.bin
if [ ! -f "$file" ] ; then
    # if not create the file
    echo "pas de fichier présent"
fi
while IFS='' read -r line || [[ -n "$line" ]]; do
    ./read_image $line
done < "$1"