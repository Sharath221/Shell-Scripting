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
echo "${USER_NAME} is sucessflly created.Password is ${PASSWORD}"
echo "Exit Code is ${?}."
fi
done

