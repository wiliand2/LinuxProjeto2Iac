#!/bin/bash

echo "Atualizando servidor"
apt update -y
apt upgrade -y

echo "Instalando apache"
apt install apache2 -y

echo "Instalando unzip"
apt install unzip -y

echo "Baixando arquivo dio"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando zip"
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Reiniciando apache"
systemctl restart apache2

