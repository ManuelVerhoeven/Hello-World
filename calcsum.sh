#!/bin/bash

#define the sum and set to 0 for defualt
sum=0

for item in $@; do #for loop that if sees if there is a arguement from shell script and if there is for it to complete the following rule. $@ stands for all shell script arguements.
    sum=$((sum+item)); #takes the default sum and makes it equal to the sum of all item in the all arguements. or rather the sum of $@ 
done #if no more items or arguements than close for loop.

echo "The Sum of $1 and $2 and $3 is $sum" #communincate what Arguement $1,$2 and $3 and the sum of those arguements.

exit 0 #end script, new shell code line
