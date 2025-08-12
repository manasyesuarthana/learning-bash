#!/bin/bash
echo "Bash version ${BASH_VERSION}"

#Doing this enables you to define how many times to increment.
#In this case, we will do a loop rang of 10 while incrementing the index by 2.
for i in {0..10..2}
do
     echo "Welcome $i times"
done

#Apparently you can write bash for loops in C Syntax :O !!!
#But we have to wrap it in double parantheses (( )), dont forget the space in between.
for (( c=1; c<=5; c++ ))
do
   echo "Welcome $c times"
done

#Printing infinitely random numbers
for (( ; ; ))
do
   echo $RANDOM
done
