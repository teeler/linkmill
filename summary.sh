#!/bin/sh

exec >SUMMARY.md

echo "# Summary"
for d in $(ls -d ????-??-??); do 
  echo "[$d]($d/index.md)"
  for p in $(ls $d/*.md | sort); do
    name=$(basename $p)
    echo "  * [${name%.md}]($p)"
  done
done
