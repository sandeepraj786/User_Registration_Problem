#!/bin/bash -x
shopt -s extglob
function inputForFirstName(){
	echo "Enter the first name:"
	read firstName
	validation $firstName
}

function inputForLastName(){
	echo "Enter the last name:"
	read lastName
	validation $lastName
}

function validation(){
	word=$1
	pattern="^[a-z]{1}[a-z]{2,}$"
	if [[ $word =~ $pattern ]]
	then
		echo valid name
	else
		echo invalid name
	fi
}

inputForFirstName
inputForLastName
