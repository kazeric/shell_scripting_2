#!/bin/bash
#initialise the variabl
sum=0
#use a for loop to read and add the numbers as they are entered
echo "Enter the 5 numbers"
for i in 1 2 3 4 5
do 
#read the number 
    read i 
    #update the initialised variabl
    sum=$(($sum+$i))
done 

#print out the result
echo $sum