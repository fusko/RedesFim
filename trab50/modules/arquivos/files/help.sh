#!/bin/bash
# prints the input


function Help(){
    clear
    echo 'HelpPostfix' | boxes
    echo 'HelpIptables' | boxes
    echo 'HelpProxy' | boxes
    echo 'HelpHttps' | boxes
}


function HelpPostfix() {
  echo 'Teste Postfix ' | boxes
  echo 'use o comando:mutt '
  echo 'o terminal exibira a mensagem: -/home/vagrant/Mail does not exist. Create it? ([yes]/no):- Responda: yes'
  echo 'ao acessar a aba do mutt, para enviar um email precione m'
  echo 'insira o nome do usuario(no caso diogo ou mateus), confirme'
  echo 'insira o assunto da email, confirme'
  echo 'então exibira a janela de edição da email, apos editar o email, precione simultaneamente as teclas Ctrl, x'
  echo 'o terminal exibira a mensagem: Save modified buffer (ANSWERING "No" WILL DESTROY CHANGES) ? digite y'
  echo 'o terminal exibira a mensagem: File Name to Write: /tmp/mutt-precise64-1000-7837-13138595311975885592, confirme'
  echo 'por fim, basta precionar y e o mail será enviado'
  echo 'para testar basta sair do mutt, acessar o usuario ao qual o email foi enviado usando o comando ssh usuario@localhost(senha do usuario é igual ao seu nome)'
  echo 'use o comando:mutt '
  echo 'o terminal exibira a mensagem: -/home/vagrant/Mail does not exist. Create it? ([yes]/no):- Responda: yes'
  echo 'ao acessar a aba do mutt, já é possivel visualizar o email',
}

function HelpIptables() {
  echo 'em desenvolvimento ' 
}

function HelpProxy() {
  echo 'em desenvolvimento ' 
}

function HelpHttps() {
   echo 'em desenvolvimento ' 
}