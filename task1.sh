#!/bin/bash

#note: script is not compatible with sh because [[...]] is not supported in sh. use ./filename.sh instead of sh filename.sh
echo " let's do the calculation for you! "
calculator () {
        if [ "$#" -ne 3 ]; then
            echo "line arguument exceeds 3"
            echo "Usage: $0 <number1> <operator> <number2>"
            exit 1
        fi
        #validate numbers
        if ! [[ "$1" =~ ^-?[0-9]+$ ]]; then
            echo "Error: First argument is not a number."
            exit 1
        fi
        #validate operator
        #This is to avoid confusion with the shell interpreting + as a command.
        #echo "Hint: If you're using "+", wrap it in quotes like: ./task1.sh 2 '+' 2"
        #check if the operator is valid
        #if ! [[ "$2" =~ ^[\+\-\*\/]$ ]]; then
        #    echo "Error: Second argument is not a valid operator (+, -, *, /)."
        #    exit 1
        #fi
	case "$2" in
            "+"|"-"|"*"|"/")
            # Valid operator — do nothing or echo for debug
            ;;
            *)
            echo " Error: '$2' is not a valid operator. Use one of +, -, *, /"
            exit 1
            ;;
        esac
        # Handle division by zero
        if [[ "$op" == "/" && "$num2" -eq 0 ]]; then
            echo "Cannot divide by zero."
            exit 1
        fi
        #validate number
        if ! [[ "$3" =~ ^-?[0-9]+$ ]]; then
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
