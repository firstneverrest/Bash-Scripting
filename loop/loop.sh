#! /usr/bin/bash
# FOR LOOP
# FRUITS="Banana Orange Apple Mango"
# for FRUIT in $FRUITS
#     do
#         echo "$FRUIT"
# done

# LOOP TO RENAME FILES
# FILES=$(ls *.html)
# NEW="new"
# for FILE in $FILES
#     do 
#         echo "Renaming $FILE to new-$FILE"
#         mv $FILE $NEW-$FILE
# done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
    do 
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./story.txt"