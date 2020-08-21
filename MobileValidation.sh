#!/bin/bash -x
shopt -s extglob
function inputForMobileNumber(){
	echo "enter mobile number in defined format:"
	read mobileNumber
	validation $mobileNumber
}

function validation(){
	number=$*
	pattern="^[\+]91[ ]?[7-9]{1}[0-9]{9}$"
	if [[ $number =~ $pattern ]]
	then
		echo valid mobile number
	else
		echo invalid mobile number
	fi

}

inputForMobileNumber
