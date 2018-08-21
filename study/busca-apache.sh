#!/bin/bash

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]]
then
	cat apache.log | grep "\b"$1"\b"
	if [ $? -ne 0 ]
	then
		echo "IP inexistente"
	fi
else
	echo "Valor inserido não é valido"
fi
