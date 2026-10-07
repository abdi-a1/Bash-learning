#!/bin/bash 


calculation() {
local num1
local num2

    echo "Enter the first number: "
    read num1
    echo "Enter the second number: "
    read num2

if [ "$num2" -eq 0 ]; then 
    echo " Error, Invalid number"
    exit 1
fi
    echo " Results: "

    addition=$(( num1 + $num2))
    echo " $num1 + $num2 = $addition "

    subtraction=$(( num1 - $num2 ))
    echo " $num1 - $num2 = $subtraction "

    multiplication=$((num1 * num2))
    echo " $num1 x $num2 = $multiplication "

    division=$(( num1 / $num2 ))
    echo " $num1 / $num2 = $division "

}

calculation