#!/bin/bash


pre="<tr><td>" 
mid="<\/td><td>"
post="<\/td><\/tr>" 

cat attacks.html |\
grep "<td>" |\
sed -e "s/$pre/ /g; s/$mid/ /g; s/$post/ /g" |\
awk 'BEGIN { printf "%-15s %-15s\n", "Attacks", "Instances(Q3)"}\
           {sum=$2+$3+$4; printf "%-15s %-15s\n", $1, sum}'

exit 0

#Line 5: Defining the three parts of the table structure I wish to strip away from the data I require.
#Line 6: Im using \to ignore that im using a special character as its part of the tag I wish to strip.
#Line 7: Defining three parts because the tags are slightly diffrent.
#Line 9: Im concatenating the attacks.html file from the same directory as genrep.sh and piping it through to grep, the \ is used to seperate the key parts of the solution.
#Line 10: Using regex to grab the table where the data I require is located and ignoring the rest of the .html content.
#Line 11: Using sed with a multiple the -e command to be able to complete multiple commands. I'm  substitute the three predefinded table tags with a space throughout the table I grep to leave only the data I wish to manipulate.
#Line 12: After stripping the remaining html tag the data is pipped to awk for formatting and processing. As per the assignment requirements I needed to create a new header which I achieved using the BEGIN command, I also required the headers to be above the daya and there for applied formating and split the headers into two seperate quotes.
#Line 13: I required a sum total of the three values ($2, $3, $4) which I gave the arugment sum. To match the headers to infomration I used the same formating as the headers and than stated the information I wanted to show, $1 for the first data field and the sum defined before.

