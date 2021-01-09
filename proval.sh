#!/bin/bash


#need to load and safe values from the values.txt file into an array called VALUES.
ARRAY_VALUES=values.txt #here the array values are matched with the values.txt file.
declare -a VALUES #declare the array VALUES.
VALUES=(`cat "$ARRAY_VALUES"`) #have the array populated with the values accociated with the file linked with ARRAY_VALUES, alternatively I could have put the values.txt file here instead.

#using a c-loop check each value in array to see which of the 3 criteria it meets.
for ((i=0; i<12; i++)) do #a counter that starts at 0 goes to 12 gaining +1 everytime its looped.

#testing if array was working and working with correct values for each line in values.txt.
#echo "$i = ${VALUES[$i]}"

echo -n "value ${i} (${VALUES[$i]}) " #print which value of c-loop count, than print corresponding value in array according to the count in c-loop in brackets for testing purposes.

if [[ ${VALUES[$i]} =~ ^[[:digit:]]+$ ]]; then #using regex if the value in array starts, is made up and ends in digits than print this message.
    echo "is comprised of numbers only"
elif [[ ${VALUES[$i]} =~ ^[[:alpha:]]+$ ]]; then #using regex if the value in array starts, is made up and ends in letters than print this message.
    echo "is comprised of Letters only"
elif [[ ${VALUES[$i]} =~ ^[[:alnum:]]+$ ]]; then #using regex if the value in array is made up and ends in digits or letters than print this message.
    echo "is comprised of both letters and Numbers"
else echo "failed to recognise if value contains numbers or letters" #this was mainly used to test if all 3 criteria were working

fi #end of if else startment

done #end of c loop

exit 0
