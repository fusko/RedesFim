#!/bin/bash

username="diogo"
if [ `sed -n "/^$username/p" /etc/passwd` ]
then
echo "echo '****GRUPO 05***' | boxes" >> ~/.bashrc
echo "echo '****Para o passo a passo de teste dos serviços basta usar os seguintes comandos:***' | boxes" >> ~/.bashrc
echo "echo 'Visualizar todos comandos: Help' | boxes" >> ~/.bashrc
echo "echo ' sobre postfix: HelpPostfix' | boxes" >> ~/.bashrc
echo "echo 'sobre iptables: HelpIptables' | boxes" >> ~/.bashrc
echo "echo 'sobre proxy: HelpProxy' | boxes" >> ~/.bashrc
echo "echo 'sobre https: HelpHttps' | boxes" >> ~/.bashrc
echo "source /home/vagrant/help.sh" >> ~/.bashrc
export http_proxy=http://192.168.33.111:8080
clear
bash --login
else
sudo useradd -m -g users -p asdf diogo  # cria o usuario paulo com senha (criptografada) asdf
sudo usermod -p $(openssl passwd -1 diogo) diogo # altera a senha usuario paulo para senha paulo em texto plano 
fi

username="mateus"
if [ `sed -n "/^$username/p" /etc/passwd` ]
then
 echo ""
else
sudo useradd -m -g users -p asdf mateus  # cria o usuario paulo com senha (criptografada) asdf
sudo usermod -p $(openssl passwd -1 mateus) mateus # altera a senha usuario paulo para senha paulo em texto plano 
fi






