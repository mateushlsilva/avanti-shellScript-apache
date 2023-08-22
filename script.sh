#!/bin/bash

echo "Atualizando o sistema ..."

sudo apt-get update -y >> /dev/null && sudo apt-get upgrade -y >> /dev/null 
 

echo "Instalando apache ..."

sudo apt install -y apache2 unzip > /dev/null 2>&1

cd /tmp

echo "Preparando ambiente ..."

wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip > /dev/null 2>&1

unzip main.zip >> /dev/null; sudo cp -R linux-site-dio-main/* /var/www/html/ >> /dev/null

echo "Site já está pronto!"