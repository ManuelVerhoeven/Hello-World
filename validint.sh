#!/bin/bash



while true; do #while loop that continues until the right condition is met.

    #Ask the user to input a number between 20 and 40
    read -p 'enter a two-digit number that is between 20 and 40: ' input

    # if the input is greater than 19 and also lower than 41 then break the loop.
    if [ $input -gt 19 ] && [ $input -lt 41 ]; then
        break
    # If the input does not met the rule above than print message.    
    else 
        echo  "incorrect number entered, try again."
    #end loop
    fi
#loop is done, run through loop until conditions are met and loop breaks.
done

#when rule in while loop is met and while loop breaks than print success mesage
echo "success, You have entered a two-digit number between 20 and 40."

exit 0

