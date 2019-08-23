#!/bin/bash

filename="journal.txt"
entry="$1"

git add .
git commit -m "$entry"
git log -1 --pretty=format:'%Cgreen%ad %Creset: %s' --date=short >> $filename
echo "" >> $filename
