fdupes -fr . > dupes.txt;
xargs -a dupes.txt -d'\n' rm -f;
# -r for recursive search
