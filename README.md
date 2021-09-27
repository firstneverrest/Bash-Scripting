# Bash

Bash is a Unix Shell and command language written by Brian Fox for the GNU Project. Bash was created to replace Bourne shell. First release in 1989, it has been used as the default shell for most Linux distributions. You can install WSL to use bash in Windows.

Every Linux command line that you use in CLI like `ls, pwd, touch, mv, mkdir, etc.` can be used in bash script. Bash script include multiple command in one file which help reducing repeated tasks such as rename 100 files.

## Check what shell you are using

```
echo $0

// or

which bash
```

If you have installed bash it will show `/usr/bin/bash`.

## Bash documentation

Use `man bash` to open bash manual in CLI. Also, you can visit the manual at [Bash Reference Manual](https://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html).

## Script File Basics

- First two character should be `#!` (known as "shebang").
- Followed by path to Bash or env such as `#!/usr/bin/env bash` and `#!/bin/bash`
- This is executed by the kernel system called `execve()`.
- Kernel checks for `#!` and passes the path to the original program as a command-line argument.
- Bash script file extension is `.sh`
- Make scripts executable with `chmod u+x`
- With only read permission, execute a script with `bash myscript.sh`

## How to create bash script and run bash

1. Create bash file that end with `.sh` like `myscript.sh`
2. Use `echo $0` or `which bash` to see where are your bash
3. In bash file, write `#! <bash_path>` at the top of the file
4. Write some bash code such as `echo Hello Bash!`
5. Run bash script with `./myscript.sh` or `bash myscript.sh`

## Bash syntax

```bash
#! /usr/bin/bash

# PRINT OUT TO CONSOLE
echo Hello Bash!

# VARIABLE - UPPERCASE IS MORE POPULAR
NAME="Lily" # no space
echo "My name is $NAME"
echo "My name is ${NAME}"

# USER INPUT
read -p "Enter your name: " NAME
echo "Hello $NAME"

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
```

## Comparison

- `-eq` return true if the values are equal
- `-ne` return true if the values are not equal
- `-gt` return true if val1 is greater than val2
- `-ge` return true if val1 is greater than or equal to val2
- `-lt` return true if val1 is less than val2
- `-le` return true if val1 is less than or equal to val2

```bash
NUM1=2
NUM2=7
if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi
```

## File Conditions

- `-d` file - return true if the file is a directory
- `-e` file - return true if the file exists
- `-f` file - return true if the provided string is a file
- `-g` file - return true if the group id is set on a file
- `-r` file - return true if the file is readable
- `-s` file - return true if the file has a non-zero size
- `-u` file - return true if the user id is set on a file
- `-w` file - return true if the file is writable
- `-x` file - return true if the file is an executable

```bash
#! /usr/bin/bash
FILE="myfile.txt"
if [ -f "$FILE" ]
then
    echo "$FILE is a file"
else
    echo "$FILE is not a file"
fi
```

## Case statement

```bash
#! /usr/bin/bash
read -p "Are you Frontend Developer? Y/N: " ANSWER
case "$ANSWER" in
    [y/Y] | [yY][eE][sS])
        echo "Get 3 golds and 2 supplies"
        ;;
    [nN] | [nN][oO])
        echo "Get 1 gold and 4 supplies"
        ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac
```

## Loop

```bash
#! /usr/bin/bash
# FOR LOOP
FRUITS="Banana Orange Apple Mango"
for FRUIT in $FRUITS
    do
        echo "$FRUIT"
done

# LOOP TO RENAME FILES
FILES=$(ls *.html)
NEW="new"
for FILE in $FILES
    do
        echo "Renaming $FILE to new-$FILE"
        mv $FILE $NEW-$FILE
done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./story.txt"
```
