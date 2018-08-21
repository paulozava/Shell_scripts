#!/bin/bash

if [ -z $1 ]
then
    while [ -z $requisicao ]
    do
        read -p "Você esqueceu de colocar o parâmetro (GET, PUT, POST, DELETE): " requisicao
        letra_maiuscula=$(echo $requisicao| awk '{ print toupper($1) }')
    done
else
    letra_maiuscula=$(echo $1 | awk '{ print toupper($1) }')
fi

if [[ 

