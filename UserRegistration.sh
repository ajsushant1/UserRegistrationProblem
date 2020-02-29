#!/bin/bash -x

echo "/******************************************* WELCOME TO USER REGISTRATION *******************************************/"

#CONSTANT
IS_EMPTY=" "

# variables
firstName=""
lastName=""
email=""
mobileNumber=""

# DEFINING REGEX PATTERN
nameRegexPattern="^[A-Z][a-zA-Z]{2,}$"
emailRegexPattern="^[a-zA-Z0-9]+([._+-]?[a-zA-Z0-9]+)?[@][a-zA-Z]+[.][a-zA-Z]{2,3}([.][a-zA-Z]{2,3})?$"
mobileRegexPattern="^[0-9]{2}[ ][0-9]{10}$"


# FUNCTION TO VALIDATE INPUT PATTERN
function validateFirstLastName(){
	local inputPattern=$1
	if [[ $inputPattern =~ $nameRegexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

function validateEmailId(){
	local inputPattern=$1
	if [[ $inputPattern =~ $emailRegexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid Email Id"
	fi
}

function validateMobileNumber(){
	if [[ $mobileNumber =~ $mobileRegexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid Mobile Number"
	fi
}

# READING INPUT FROM USER
read -p "Enter Your First Name :" firstName
validateFirstLastName $firstName

read -p "Enter Your Last Name :" lastName
validateFirstLastName $lastName

read -p "Enter Your EmailId :" email
validateEmailId $email

read -p "Enter Your MobileNumber :" mobileNumber
validateMobileNumber
