#!/bin/bash
# Compute number of words APPROXIMATELY.
# ###########################################################################
# Note: this script uses pdftotext. You can install it with `brew install pdftotext` on MacOS.
# ###########################################################################
# Configure to use directly in TeXstudio:
# 	First-time configuration:
# 		1) Open Preferences -> Build -> User Commands
# 		2) Set these 2 parameters:
#			2.1) user0:Count words in pdf
#			2.2) /path_to/word_count/count_pdf_words.sh
# 	To execute it:
# 		1) Open Tools -> User -> ``1: Count words in pdf''
# ###########################################################################
echo "Counting words in $1"
pdftotext "$PWD/$1.pdf"

echo "1) Results using wc command:"
cat "$PWD/$1.txt"| wc -w

echo "2) Results using python3 (w/ numbers and punctuation removal):"
python3 "count_pdf_words.py" "$PWD/$1.txt"

echo "[!]: Results w/ Python are more accurate than wc command. Anyway, consider them approximate..."