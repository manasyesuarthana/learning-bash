#!/bin/bash

echo "This scripts checks if your number is greater or less than a certain number."
read -p "Please enter a number: " NUM

if [ $NUM -gt 100 ] #the spaces between the inner condition and the square brackets are ESSENTIAL. DONT FORGET THAT.
then
    echo "Damn your number is greater than a 100. Your number: $NUM. Here is your flag LMAO{Y0u_h4v3_been_tr0lled}"

elif [ $NUM -gt 50 ]
then
    echo "Not bad, keep trying."
else
    echo "LMAO. Get a bigger one. "

fi

echo "Goodbye."
