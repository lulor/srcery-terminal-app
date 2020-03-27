#!/bin/sh

# Remove braces, commas, double quotes, leading spaces/tabs and blank lines

URL="https://github.com/srcery-colors/srcery-terminal/raw/master/palette.json"

curl -sL $URL | sed \
	-e 's/{//g' \
	-e 's/}//g' \
	-e 's/"//g' \
	-e 's/,//g' \
	-e 's/^[ \t]*//' \
	-e '/^[[:space:]]*$/d' \
	> palette.txt
