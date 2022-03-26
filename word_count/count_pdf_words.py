import sys
import re

path_file = sys.argv[1]
with open(path_file, 'r', encoding="ISO-8859-1") as fin:
    all_text = fin.read().split()  # split by whitespace
count_words = 0
for word in all_text:
    # clean word (i.e. remove numbers and punctuation)
    word = re.sub('[^A-Za-z]+', '', word)
    if word != '':
        count_words += 1
print(count_words)
