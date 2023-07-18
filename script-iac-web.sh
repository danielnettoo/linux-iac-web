#!/bin/bash

echo "Atualização do Sistema e Instalação do APACHE2"

apt-get update -y
apt-get upgrade -y

apt-get install apache2 -y

apt-get install unzip -y



echo "Download do file do repositóro do Git e adição no diretório do  APACHE"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

cp -R * /var/www/html/
