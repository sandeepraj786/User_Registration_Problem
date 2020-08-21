#!/bin/bash -x
shopt -s extglob
function inputForEmail(){
	echo "Enter the Email:"
	read email
	validation $email
}

function validation(){
	word=$1
	pattern="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,})$"
	if [[ $word =~ $pattern ]]
	then
		echo valid email
	else
		echo invalid email
	fi

}
inputForEmail
