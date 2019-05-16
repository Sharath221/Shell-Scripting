#!/bin/bash
read -p "Do you want to create users(Yes/No):" CHOICE
while [[ ${CHOICE} = "Yes" ]] || [[ ${CHOICE} = "yes" ]]
do
#Ask for the username
read  -p "Please enter the username:" USER_NAME
#Check of the Username Exists
EXUSER=$(cat /etc/passwd | cut -d ":" -f 1 | grep -i ${USER_NAME})
if [[ ${EXUSER} = ${USER_NAME} ]]
then
echo "User ${USER_NAME} already exists."
echo "Exit Code is ${?}."
else
#Generate a complex password
SPEC='!@#$%^&*()'
SPECHAR=$(echo $SPEC | fold -w1 | shuf | head -1)
PASSWORD=Capita${RANDOM}${SPECHAR}
useradd -m ${USER_NAME}
echo $PASSWORD |passwd --stdin ${USER_NAME}
echo "${USER_NAME} is successfully created.Password is ${PASSWORD}"
fi
read -p "Do you want to create users(Yes/No):" CHOICE
done
echo "You have opted for no...!!"

