#!/bin/bash
#read the contents of the file with cat 
#pipe the result to the tr command to remove the white space 
#pipe the result to the wc comand to get the count 
count=$(cat 'JUJAyetu.txt' | tr -d [:space:] | wc -m)
#print out the final result 
echo $count