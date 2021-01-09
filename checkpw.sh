#!/bin/bash
#by Manuel Verhoeven
#student number: 10480891 

#Start in line 1 (skips the infomration we dont want on line 0).
#If the legth of the string in argument 2 of the dataset is equal to 8 and contains a number between 1-9 and also contains a captial letter between A-Z. 
#~ = contains,length is a special command and grep placed between / / in awk.
#Than communicated argument 2 of the data set meets the password strength requirements.
#if it doesnt match than print argument 2 of the data set does not meet the password strength.
#Apply these rules to the file usrpwords.txt.

awk 'NR>1   {if (length($2)~8 && $2~/[1-9]/ && $2~/[A-Z]/)
                { 
                    print $2 " - meets password strength requirements"
                }
            
            else
                { 
                    print $2 " - does NOT meet password strength requirments"}
                }' usrpwords.txt

exit 0