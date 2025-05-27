#!/bin/bash
# Number of arguments should be 3
if [ $# -ne 3 ]; then
    echo "Calculate using: $0 <firstnumber> <operator> <secondnumber>"
    exit
fi

# Assign command-line arguments to variables
firstnumber=$1
operator=$2
secondnumber=$3

# Perform calculation based on the operator
case $operator in
    "+") calc1=$((firstnumber + secondnumber));;
    "-") calc1=$((firstnumber - secondnumber));;
    "*") calc1=$((firstnumber * secondnumber));;
    "/") #Check for division by zero
        if [ $secondnumber -eq 0 ]; then
            echo "Sorry cannot divide by 0."
            exit
        fi
        calc1=$((firstnumber / secondnumber));;
    *) echo "Invalid operator. Supported operators are: +, -, *, /"
        exit
        ;;
esac

# Output the result
echo "$firstnumber $operator $secondnumber = $calc1"
