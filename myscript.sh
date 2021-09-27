#! /usr/bin/bash

# PRINT OUT TO CONSOLE
echo Hello Bash!

# VARIABLE - UPPERCASE IS MORE POPULAR
NAME="Lily" # no space
echo "My name is $NAME"
echo "My name is ${NAME}"

# USER INPUT
read -p "Enter your favorite fruit: " FRUIT
echo "Your favorite fruit is $FRUIT"

# IF STATEMENT
if [ "$FRUIT" == "banana" ]
then
    echo "Your fruit is banana"
fi

# IF-ELSE & ELIF STATEMENT
if [ "$FRUIT" == "banana" ]
then
    echo "Your fruit is banana"
elif [ "$FRUIT" == "orange" ]
then
    echo "Your fruit is orange"
else
    echo "Your fruit is not banana"
fi

# COMPARISON
NUM1=2
NUM2=7
if [ "$NUM1" -gt "$NUM2" ]
then 
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi