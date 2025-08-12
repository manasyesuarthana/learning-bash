#!/bin/bash

#for loop
SKILLS="DevOps CyberSecurity CloudComputing"

for skill in $SKILLS
do
    echo "I am passionate and am learning a lot about $skill."
done

NUMBER=1

while [ $NUMBER -le 10000 ]
do
    NUMBER=$(( $NUMBER * 2 ))
    echo "Multiplying by 2, number is $NUMBER now."
done

echo "Done..."
