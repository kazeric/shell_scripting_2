#!/bin/bash
sum=0
echo "Enter the 5 numbers"
for i in 1 2 3 4 5
do 
    read i 
    sum=$(($sum+$i))
done 

echo $sum