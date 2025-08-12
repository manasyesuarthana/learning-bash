#!/bin/bash

echo "This scripts checks if your number is greater or less than 100."
read -p "Please enter a number: " NUM

if [ $NUM -gt 100 ] #the spaces between the inner condition and the square brackets are ESSENTIAL. DONT FORGET THAT.
then
    echo "Damn your number is greater than a 100. Your number: $NUM. "

else
    echo "LMAO. Get a bigger one. "

fi

echo "Goodbye."
