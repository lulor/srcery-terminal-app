#!/bin/sh

# Remove braces, commas, double quotes, leading spaces/tabs and blank lines

URL="https://github.com/srcery-colors/srcery-terminal/raw/master/palette.json"

curl -sL $URL \
	| sed 's/{//g' \
	| sed 's/}//g' \
	| sed 's/"//g' \
	| sed 's/,//g' \
	| sed 's/^[ \t]*//' \
	| sed '/^[[:space:]]*$/d' \
	> palette.txt
