#!/bin/bash
count=$(cat 'JUJAyetu.txt' | tr -d [:space:] | wc -m)
echo $count