#!/bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
    echo "There are missing arguments"
    exit 1
fi



if [ ! -e $writefile ]
then

    mkdir -p $writefile
    rm -rf $writefile

fi


echo $writestr > $writefile || exit 1

