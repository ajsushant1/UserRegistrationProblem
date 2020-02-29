#!/bin/bash -x

echo "/******************************************* WELCOME TO USER REGISTRATION *******************************************/"

# variables
firstName=""
lastName=""

# DEFINING REGEX PATTERN
nameRegexpattern="^[A-Z][a-z]{2,}$"
emailRegexPattern="^[a-zA-Z0-9]+([._+-]?[a-zA-Z0-9]+)?[@][a-zA-Z]+[.][a-zA-Z]{2,3}([.][a-zA-Z]{2,3})?$"


# FUNCTION TO VALIDATE INPUT PATTERN
function validation(){
	local inputPattern=$1
	local regexPattern=$2
	if [[ $inputPattern =~ $regexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

# READING INPUT FROM USER
read -p "Enter Your First Name :" firstName
validation $firstName $nameRegexpattern

read -p "Enter Your Last Name :" lastName
validation $lastName $nameRegexPattern

read -p "Enter Your emailId :" email
validation $email $emailRegexPattern
