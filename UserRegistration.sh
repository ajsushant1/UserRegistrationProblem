#!/bin/bash -x

echo "/******************************************* WELCOME TO USER REGISTRATION *******************************************/"

# variables
firstName=""
lastName=""
email=""
mobileNumber=""
password=""
passwordMinimumLength=8

# DEFINING REGEX PATTERN
nameRegexPattern="^[A-Z][a-zA-Z]{2,}$"
emailRegexPattern="^[a-zA-Z0-9]+([._+-]?[a-zA-Z0-9]+)?[@][a-zA-Z]+[.][a-zA-Z]{2,3}([.][a-zA-Z]{2,3})?$"
mobileRegexPattern="^[0-9]{2}[ ][0-9]{10}$"
passwordRegexPattern="^([a-zA-Z]*[A-Z]+[a-zA-Z]*[0-9]+)+|([0-9]+[a-zA-Z]*[A-Z]+[a-zA-Z]*)+$"

# FUNCTION TO VALIDATE FIRST NAME AND LAST NAME OF USER
function validateFirstLastName(){
	local inputPattern=$1
	if [[ $inputPattern =~ $nameRegexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

# FUNCTION TO VALIDATE EMAILID OF USER
function validateEmailId(){
	local inputPattern=$1
	if [[ $inputPattern =~ $emailRegexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid Email Id"
	fi
}

# FUNCTION TO VALIDATE MOBILE NUMBER OF USER
function validateMobileNumber(){
	if [[ $mobileNumber =~ $mobileRegexPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid Mobile Number"
	fi
}

# FUNCTION TO VALIDATE USER PASSWORD
function validatePassword(){
	local inputPattern=$1
	if [[ $inputPattern =~ $passwordRegexPattern && ${#inputPattern} -ge $passwordMinimumLength ]]
	then
		echo "Valid"
	else
		echo "Invalid Password please enter minimum 8 character password"
		echo "Should have at least 1 upper case letter"
		echo "Should have at least 1 numeric number"
	fi
}

# READING INPUT FROM USER AND VALIDATING THAT INPUT
read -p "Enter Your First Name :" firstName
validateFirstLastName $firstName

read -p "Enter Your Last Name :" lastName
validateFirstLastName $lastName

read -p "Enter Your EmailId :" email
validateEmailId $email

read -p "Enter Your MobileNumber :" mobileNumber
validateMobileNumber

read -p "Enter Your Password :" password
validatePassword $password

