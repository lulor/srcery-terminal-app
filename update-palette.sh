#!/bin/sh

# Remove braces, commas, double quotes, leading spaces/tabs and blank lines

FILE='palette.txt'
URL='https://github.com/srcery-colors/srcery-terminal/raw/master/palette.json'

[ -f "$FILE" ] && chmod +w "$FILE"

curl -sL "$URL" | grep -v cursor | sed \
	-e 's/{//g' \
	-e 's/}//g' \
	-e 's/"//g' \
	-e 's/,//g' \
	-e 's/^[ \t]*//' \
	-e '/^[[:space:]]*$/d' \
	> "$FILE"

chmod -w "$FILE"
