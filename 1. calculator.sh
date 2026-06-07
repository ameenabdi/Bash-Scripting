#!/bin/bash
# Challenge 1: Basic Arithmetic Calculator
# Prompts user for two numbers and performs addition, subtraction, multiplication, division
# Handles division by zero

#User Prompt Message
read -p "Enter your first here: " a
read -p "Enter your second here: " b

#if statement not to divide by 0
if [[ $b -eq 0 ]]; then
        echo "Can't divide by 0"
        exit 1

fi

#Arthimitic Calcuation
add=$(($a + $b))
minus=$(($a - $b))
times=$(($a * $b))
divide=$(($a / $b))

#Output
echo "Sum: $add"
echo "Subtraction: $minus"
echo "Multiplication: $times"
echo "Division: $divide"
