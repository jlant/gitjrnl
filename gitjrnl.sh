#!/bin/bash

filename="journal.txt"
entry="$1"

git log -1 --pretty=format:'%Cgreen%ad %Creset: %s' --date=short >> $filename
echo "" >> $filename
git add .
git commit -m "$entry"
