#!/bin/bash

ssh-keygen -t rsa -b 4096 -C "seu_email@dominio.com"  
ssh-agent -s
ssh-add ~/.ssh/github
echo " ###### copie o texto abaixo para o github"
cat ~/.ssh/github.pub

#parar o script
#perguntar se a copia foi feita

echo "##### vamos estabelecer a conexão"
echo "Caso apareça Are you sure you want to continue connecting (yes/no)? basta escrever yes"
ssh -T git@github.com

echo "Parabens"