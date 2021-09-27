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
