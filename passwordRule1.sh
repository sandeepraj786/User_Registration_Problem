#!/bin/bash -x
shopt -s extglob
function inputPassword(){
	echo "enter the passWord"
	read password
	validation $password
}

function validation(){
	word=$1
	pattern="^[0-9a-zA-Z]{8,16}$"
	if [[ $word =~ $pattern ]]
	then
		echo valid password
	else
		echo invalid password
	fi
}

inputPassword

