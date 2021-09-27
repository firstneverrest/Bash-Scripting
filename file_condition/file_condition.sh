#! /usr/bin/bash
FILE="myfile.txt"
if [ -f "$FILE" ]
then
    echo "$FILE is a file"
else
    echo "$FILE is not a file"
fi

