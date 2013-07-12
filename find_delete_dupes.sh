#!/bin/bash
fdupes -fr . > dupes.txt;
xargs -a dupes.txt -d'\n' rm -f;
# -r for recursive search, -f omit first duplicate, -1 each set of matches on same line, -S show size of files
