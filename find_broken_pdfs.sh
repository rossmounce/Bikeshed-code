#!/bin/bash
for f in *.pdf; do
  echo "checking $f"
  if pdfinfo "$f" > /dev/null; then
    : Nothing
  else
    echo "$f is broken"
  fi
done
