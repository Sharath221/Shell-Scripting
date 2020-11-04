#!/bin/bash

read -p " Enter URL: " URL
wget $URL
if [ -eq $? ]
then
echo " File Downloaded Sucessfully "
ls -al
else
echo "Not Valid URL"
fi 

