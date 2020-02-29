#!/bin/bash -x

echo "/******************************************* WELCOME TO USER REGISTRATION *******************************************/"

# variables
firstName=""
lastName=""

# READING FIRST NAME FROM USER
read -p "Enter Your First Name :" firstName
read -p "Enter Your First Name :" lastName

# FUNCTION TO VALIDATE FIRST NAME AND LAST NAME OF USER
function validateName(){
	local inputName=$1
	local pattern="^[A-Z]{1}[a-z]{2,}$"
	if [[ $inputName =~ $pattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

validateName $firstName
validateName $lastName
