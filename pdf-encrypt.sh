#!/bin/bash
echo "Please enter your password: "
stty -echo
read pdfpasswd
stty echo
outfile=$(echo "$1" | sed -re 's/\.pdf/ \(encrypted\).pdf/')
qpdf -encrypt "$pdfpasswd" "$pdfpasswd" 256 -- "$1" "$outfile"