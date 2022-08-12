# Script para preparar e subir um aplicativo para um servidor web (apache2)

Script desenvolvido como atividade para o bootcamp Linux Experience da [dio.me](dio.me) com o grande mestre [Denilson Bonatti](https://github.com/denilsonbonatti)

## Como usar o Script

No terminal entre como usuário root com o comando abaixo:

```bash
sudo su
```
Clone esse repositório:
```bash
git clone https://github.com/elizeubarbosaabreu/script-subir-app-para-web-server.git
```

Agora Navegue até o Script e altere as permissões para execução:

```bash...
cd script-subir-app-para-web-server
chmod +x script.sh -y
```
Agora basta executar o comando ```./script.sh``` no terminal para instalar o apache e subir um site disponivel no github para seu servidor...

## Como enviar seu site?

Para enviar um projeto seu, basta substituir o endereço ```https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip``` pelo link zip de sua pasta com seus arquivos html, css, javascrips, imagens, etc...