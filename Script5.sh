#!/bin/bash
# Script 5: Open Source Manifesto

echo "Answer the questions below"

read -p "Tool you use daily: " TOOL
read -p "Meaning of freedom (one word): " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date)
FILE="manifesto.txt"

echo "On $DATE, I believe open source is about $FREEDOM." > $FILE
echo "I use $TOOL regularly and it helps me learn." >> $FILE
echo "In future, I want to build $BUILD and share it freely." >> $FILE

echo "Saved in $FILE"
cat $FILE
