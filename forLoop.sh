#!/bin/bash
USERS=${@}
#SPEC='!@#$%^&*()_+'
#SPEC_CHAR=$(echo ${SPEC}|fold -w1|shuf|head -1)
#PASSWORD=$(date +%s%N)${RANDOM}${SPEC_CHAR}
for USER in ${USERS}
do
SPEC='!@#$%^&*()_+'
SPEC_CHAR=$(echo ${SPEC}|fold -w1|shuf|head -1)
PASSWORD=$(date +%s%N)${RANDOM}${SPEC_CHAR}
useradd ${USER} -p  ${PASSWORD}
echo "User ${USER} is successfully created."
echo ${PASSWORD}
done
