#!/bin/bash -x
shopt -s extglob
function input()
{
 echo "Enter the FirstName"
 read name
 firstName $name
}

function firstName()
{
 word=$1
 firstNameExpression="^[A-Z]{1}[a-z]{2,}$"
 if [[ $word =~ $firstNameExpression ]]
 then
  echo Valid Name;
 else
  echo Invalid Name;
 fi
}

input
