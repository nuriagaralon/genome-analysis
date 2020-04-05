#!/usr/bin/awk -f

/^>/ {
    OUT=substr($0,2,11) ".fasta"
}

OUT {
    print >OUT
}
