#!/bin/bash -x

echo "/******************************************* WELCOME TO USER REGISTRATION *******************************************/"

# variables
firstName=""
pattern=""

# READING FIRST NAME FROM USER
read -p "Enter Your First Name :" firstName
pattern="^[A-Z]{1}[a-z]{2,}$"

# VALIDATIING FIRST NAME OF USER
if [[ $firstName =~ $pattern ]]
then
	echo "Valid name"
else
	echo "Invalid name"
fi

