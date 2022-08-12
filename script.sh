#!/bin/bash

echo "Esse script vai instalar o Apache em seu Ubutu server ou AWS.
deseja continuar? CTRL+C cancelar | Enter Continuar: "; read ok

# Atualizando o servidor
echo "Preparando atualizacao do sistema..."
apt update && apt upgrade -y

# Instalando o Apache2
echo "Instalando o apache2..."
apt install apache2 -y

# Instalando dependencias unzip para descompactacao e wget para download
echo "Instalando o software de descompactacao unzip..."
apt install unzip -y
echo "Instalando o gerenciador de download wget..."
apt install wget -y

# Subindo aplicação do github para o servidor
echo "Subindo arquivos do aplicativo para o servidor"

cd /

mkdir /tmp
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Arquivos estao no servidor..."
echo ""
echo "Descompactando file main.zip"
unzip main.zip
echo "Deletendo arquivos desnecessarios"
rm main.zip*
echo ""
echo "Movendo arquivos para o diretorio Default do servidor apache"

# Renomeando o arquivo descompactado para html e movendo para a pasta /var/www/
cd linux-site-dio-main
cp -R * /var/www/html

echo "Acesse o site:"; hostname -i
