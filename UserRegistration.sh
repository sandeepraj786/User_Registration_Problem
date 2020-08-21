#!/bin/bash -x
shopt -s extglob

function inputForFirstName()
{
 printf "Enter the FirstName"
 read name
 validation1 $name
}

function inputForLastName()
{
 echo"Enter the LastName"
 read lastname
 validation1 $lastname
}

function inputForEmail()
{
 printf "Enter the Email Address"
 read address
 validation2 $address
}

function inputForMobileNumber
{
 printf "Enter the Mobile Number in the described format"
 read mobileNumber
 validation3 $mobileNumber
}

function inputPassword
{
 printf "Enter the password for verification"
 read password
 validation4 $password
}

function validation1()
{
 word=$1
 nameExpression=^[A-Z]{1}[a-z]{2,12}$
 if [[ $word =~ $NameExpression ]]
 then
  echo Valid Name;
 else
  echo Invalid Name;
 fi
}

function validation2()
{
 email=$1
 emailExpression="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,})$"
 if [[ $email =~ $emailExpressionCheck ]]
 then
  echo Valid Email;
 else
  echo Invalid Email;
 fi
}

function validation3()
{
 number=$*
 mobileNumberExpressionCheck="^[\+]91[ ]?[7-9]{1}[0-9]{9}$"
 if [[ $number =~ $mobileNumberExpressionCheck ]]
 then
  echo Valid Mobile Number;
 else
  echo Invalid Mobile Number;
 fi
}

function validation4
{
 emailPassword=$1
 emailPasswordValidation="^(?=.+[a-z])(?=.+[0-9])(?=.+[A-Z])(?=.{8,}).+$"
  if [[ $emailPassword =~ $emailPasswordValidation ]]
 then
  echo Valid Password;
 else
  echo Invalid Password;
 fi
}

inputForFirstName
inputForLastName
inputForEmail
inputForMobileNumber
inputPassword
