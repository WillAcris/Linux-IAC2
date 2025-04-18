#!/bin/bash


echo "Iniciando o script de instalação do servidor web Apache..."

# Atualiza o sistema
echo "Atualizando o sistema..."
apt-get update
apt-get upgrade -y

# Instala o servidor Apache
apt-get install apache2 -y
apt-get install unzip -y
echo "Instalação do servidor concluída com sucesso!"


cd /temp
wgewt https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
