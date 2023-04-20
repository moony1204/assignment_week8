#!/bin/bash
for i in {a..z}; do
	if [ ! -d "$i" ]; then
		mkdir "$1"
	fi
done

for file in files/*.txt
do 
	letter=${file:6:1}
	lowercase_letter=${letter,,}
	cp "$file" "$lowercase_letter"
done
