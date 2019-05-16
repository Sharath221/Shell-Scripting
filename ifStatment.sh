#!/bin/bash
#THIS SCRIPT WILL CHECK FOR THE USER NAME BEFORE CREATING IT.

#Read Username from the keyboard.
read -p "Please enter the username:" USER_NAME

#Create Complex Password.
SPEC='!@#$%^&*()_'
SPECCHAR=$(echo ${SPEC}|fold -w1|shuf|head -1)
PASSWORD=India@${RANDOM}${SPECCHAR}

#Check if the users Exists and if exists thow error.
EXUSER=$(cat /etc/passwd |grep -i ${USER_NAME} |cut -d ":" -f 1)
#EXUSER=$(cat /etc/passwd |cut -d ":" -f 1 | grep -i ${USER_NAME})
echo "The existing user name is ${EXUSER} ."

if [[ ${EXUSER} == ${USER_NAME} ]]
then
echo "User aleady exists. Please use a diffrent username..!!"
else
echo "Creating the new user...!!"
  sleep 3s
  useradd -m ${USER_NAME}
  echo ${PASSWORD} | passwd --stdin ${USER_NAME}
  passwd -e ${USER_NAME}
  #Print the USername and Password.
  echo "Username is ${USER_NAME}  Password is ${PASSWORD} "

fi
