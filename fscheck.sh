#!/bin/bash
#by Manuel Verhoeven
#student number: 10480891 

getprop()   { #the function getprop is placed in the header
                file_size_b=$(stat -c %s "$file") #The stat custom command %s is used on the input file to find the size in bytes (alternatively a argument $1 can be used here)
                toKB=0.001 #one byte is equal to 0.001 kilobytes, this will be used to convert bytes to kiloytes.
                file_size_kb=$(echo "$file_size_b*$toKB" | bc) #this is where bytes are converted into kilobytes using the two previous statements
                word_count=$(wc -w < $file) #word count on the input file
                modi_date=$(date -r $file +"%d-%m-%Y %H:%M:%S") #using the date commannd to see when the file was last modified using a custom time stamp.

                echo "The file $file contains $word_count words and is $file_size_kb KB in size and was last modified $modi_date" #a print output of the information from the getprop function to the terminal.
            }

read -p "Enter the file name you wish to get the properties from: " file #a input request for the user to enter the file they wish to run through the getprop function.
getprop $file #calling the function getprop using the the input file.

exit 0