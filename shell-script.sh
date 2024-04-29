#!/bin/bash
# In simple words, the she-bang at the head of the script tells the system that this file is a set of commands to be fed to the command interpreter indicated.
##########################################
# Author: 
# Created:
# Version:
# Purpose:
##########################################

NUMBER=$1

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
N="\e[0m"


if [ $# -eq 0 ]
then
    echo -e "$RED Must provide input $N"
    exit 1
fi

re='^[0-9]+$'

if ! [[ $NUMBER =~ $re ]]
then
    echo -e "$RED Input must be numberial  $N"
    exit 1
fi

if [ $NUMBER -gt 100 ]
then
    echo -e "$GREEN Input is greater than 100 $N"
else
    echo -e "$YELLOW Input is not greater than 100 $N"
fi


