#!/bin/bash
for i in {a..z}; do
	if [ ! -d "$i" ]; then
		mkdir "$1"
	fi
done

for file in files/*.txt
do 
	letter=${file:6:1}
	cp "$file" "$letter"
done

for i in {a..z};
do
	if [ -d "$i" ]; then
		cd "$i"
		ls *.txt | sort | while read file; do
			cp "$file" "../files/$file"
		done
		cd ..
	fi
done