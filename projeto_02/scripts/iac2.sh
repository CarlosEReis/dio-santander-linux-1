#!/bin/bash

echo -e "\n Atualizando o sistema..."
apt-get update
apt-get upgrade -y

echo -e "\n Instalando o Apache HTTP Server..."
apt-get install apache2 -y

echo -e "\n Instalando Unzip..."
apt-get install unzip -y

echo -e "\n Baixando a aplicação..."
cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo -e "\n Descompactando a aplicação..."
unzip main.zip
cd linux-site-dio-main

echo -e "\n Movendo a aplicação para o diretório do Apache..."
cp -r * /var/www/html/