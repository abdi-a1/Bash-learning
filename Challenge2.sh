#!/bin/bash

mkdir bash_demo1
if [ -d ~/bash_demo1 ]; then 
    echo " Directory 'bash_demo' created."
fi

cd bash_demo1

touch demo1.txt

if [ -f "demo1.txt" ]; then 
    echo " File 'demo.txt' created."
fi 

today=$(date +%d/%m/%y)

echo " This file was created by a Bash script on $today" >> demo.txt
 
cat demo1.txt