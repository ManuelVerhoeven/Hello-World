#!/bin/bash
#by Manuel Verhoeven
#student number: 10480891



# prompt the user for the pattern they wish to search for
# prompt user if the want the exact work match or a wildcard line match
# prompt if the want an do on an inverted search


while true do;
    read -p "what pattern or wild card string do you do you wish to search for: " input
    read -p "do you wish to perform an invited seach enter [1 for yes and 2 for no]: " inverted
   
    if ($inverted = 2); then
    echo "your search has a total result of:"
        cat access_log.txt | grep -i $input | wc -l
    echo "Your search came up in the following lines:"
        cat access_log.txt | grep -i $input | -n

    elif ($inverted = 1); then
    echo "your search total of non-matching results is: "
        cat access_log.txt |grep -i $input | wc -v

    else echo -p ""


fi
exit 0


#I ran out of time and this is due, I spent a bit of time on this and didnt figure it out if i had a bit longer i think i would of gotten there.