#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]
then

    echo "The parameters are not specified"
    exit 1
fi



if [ ! -d $filesdir ]
then
    echo "The directoy doesn't exist"
    exit 1
fi


cont=0
cont2=0
aux=0

archivos=$(find $filesdir)

for archivo in $archivos
do


    if [ -e $archivo -a ! -d $archivo ]
    then
        aux=$(cat $archivo |grep -c $searchstr)
        cont2=$((cont2+1))
    fi

    cont=$((cont+aux))
done



echo "The number of files are ${cont2} and the number of matching lines are ${cont}"

