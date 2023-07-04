#!/bin/bash
echo "Please enter your password: "
stty -echo
read pdfpasswd
stty echo
outfile=$(echo "$1" | sed -re 's/\.pdf/ \(decrypted\).pdf/')
qpdf --decrypt --password="$pdfpasswd" "$1" "$outfile"