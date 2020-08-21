#!/bin/bash -x
shopt -s extglob
function inputPassword(){
   echo "enter the passWord"
   read password
   validation $password
}

function validation(){
   word=$1
   pattern="^(?=.+[a-z])(?=.+[0-9])(?=.+[A-Z])(?=.{8,}).+$"
   if [[ $word =~ $pattern ]]
   then
      echo valid password
   else
      echo invalid password
   fi
}

inputPassword

