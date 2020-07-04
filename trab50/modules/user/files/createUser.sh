#!/bin/bash
sudo useradd -m -g users -p asdf diogo  # cria o usuario paulo com senha (criptografada) asdf
sudo usermod -p $(openssl passwd -1 diogo) diogo # altera a senha usuario paulo para senha paulo em texto plano 
sudo useradd -m -g users -p asdf mateus  # cria o usuario paulo com senha (criptografada) asdf
sudo usermod -p $(openssl passwd -1 mateus) mateus # altera a senha usuario paulo para senha paulo em texto plano 
sudo useradd -m -g users -p asdf usuario1  # cria o usuario paulo com senha (criptografada) asdf
sudo usermod -p $(openssl passwd -1 usuario1) usuario1 # altera a senha usuario paulo para senha paulo em texto plano 
sudo useradd -m -g users -p asdf usuario2  # cria o usuario paulo com senha (criptografada) asdf
sudo usermod -p $(openssl passwd -1 usuario2) usuario2 # altera a senha usuario paulo para senha paulo em texto plano 
sudo useradd -m -g users -p asdf usuario3  # cria o usuario paulo com senha (criptografada) asdf
sudo usermod -p $(openssl passwd -1 usuario3) usuario3 # altera a senha usuario paulo para senha paulo em texto plano 
sudo useradd -m -g users -p asdf usuario4  # cria o usuario paulo com senha (criptografada) asdf
sudo usermod -p $(openssl passwd -1 usuario4) usuario4 # altera a senha usuario paulo para senha paulo em texto plano 
sudo useradd -m -g users -p asdf usuario5  # cria o usuario paulo com senha (criptografada) asdf
sudo usermod -p $(openssl passwd -1 usuario5) usuario5 # altera a senha usuario paulo para senha paulo em texto plano 
