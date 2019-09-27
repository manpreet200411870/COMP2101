#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number

read -p "Input1? " 1stInput
read -p "Input2? " 2ndInput

sum=$((1stInput + 2ndInput))
sub=$((1stInput - 2ndInput))
dividend=$((1stInput / 2ndInput))
multiply=$((1stInput * 2ndInput))
remainder=$((1stInput % 2ndInput))
power=$((1stInput ** 2ndInput))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $1stInput/$2ndInput}")

cat <<EOF
$1stInput plus $2ndInput is $sum
$1stInput divided by $2ndInput is $dividend with the remainder of $remainder
  - More precisely, it is $fpdividend
$1stInput multiply by $2ndInput is $multiply
$1stInput subtracting by $2ndInput is $sub
Displaying the $1stInput raised to the power of $2ndImput is$power
EOF
