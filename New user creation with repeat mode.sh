#!/bin/bash
while true
do
read -p "Please enter the User Name: " USER_NAME
if [ -z "$USER_NAME" ];
then
echo " User Not Valid and User Name Entered : $USER_NAME "
else
echo " User Name Entered : $USER_NAME "
Ex_USER=$(cat /etc/passwd | cut -d ":" -f 1 | Grep -W $USER_NAME)

if [ "$USER_NAME" = "$Ex_USER ]; then
echo "User $USER_NAME Already Exists. Choose Diffrent user name.."
else
echo " Creating user $USER_NAME"
sleep 1
spec=$(echo '!@#%_ | fold -w1 |shuf | head -1)
PASSWORD="India${spec}${RANDOM}"
echo "Genrating Your Paswword"
Sleep 1
useradd -m $USER_NAME
echo "Your User Name: $USER_NAME"
echo "Your Password: $PASSWORD"
echo "$USER_NAME:$PASSWORD" | sudo chpasswd
passwd -e "${USER_NAME}"
fi
fi
done
