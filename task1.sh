#!/bin/bash
#Task: 1. Simple Calculator: Build a calculator that supports +,-,/ and *. The script should be executed this way: ./calc.sh 5 + 3
echo " let's do the calculation for you! "
calculator () {
        if [ $# -ne 3 ]; then
            echo "line arguument exceeds 3"
            echo "Usage: $0 <number1> <operator> <number2>"
            exit 1
        #validate numbers
        elif ! [[ "$1" =~ ^-?[0-9]+$ ]]; then
            echo "Error: First argument is not a number."
            exit 1
        elif ! [[ "$2" =~ ^[\+\-\*\/]$ ]]; then
            echo "Error: Second argument is not a valid operator (+, -, *, /)."
            exit 1
        #validate operator
        #check if the operator is valid
        elif ! [[ "$3" =~ ^-?[0-9]+$ ]]; then
        echo "Error: Third argument is not a number."
        exit 1
        fi

        #If all validations pass, perform the calculation
        result=$(expr "$1" "$2" "$3")   
        echo "Answer = $result"
        #Display the result of the calculation
}

#Call the calculator function with the provided arguments
calculator "$@"

#This function checks if the user provided the correct number of arguments and if they are valid numbers/operators.
#It uses regular expressions to validate the first and third arguments as numbers and the second argument as a valid operator.
#If any validation fails, it prints an error message and exits the script.
