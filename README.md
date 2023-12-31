
# Documentação do Projeto: Parser de Arquivos CNAB

## Visão Geral

O Parser de Arquivos CNAB é uma aplicação que permite aos usuários fazer o upload de arquivos nos formatos .txt e .csv, que seguem o padrão CNAB, para posterior análise e conversão dos dados contidos nesses arquivos em um formato legível.

A lógica principal para o parseamento dos arquivos CNAB está implementada em um script Lua, chamado `main.lua`. A aplicação é composta por uma interface HTML que permite o upload dos arquivos, um arquivo PHP para processar o upload e chamar o `main.lua`, e um arquivo CSS para estilização básica da interface.

## Requisitos

Para executar o projeto, você precisará de:

- XAMPP ou qualquer servidor web similar.
- PHP instalado no seu servidor web.
- Lua instalado no seu sistema.
- Navegador web moderno que suporta HTML5 e JavaScript.

## Configuração

Siga estas etapas para configurar o projeto:

### Windows

1. Instale o XAMPP seguindo as instruções em [https://www.apachefriends.org/index.html](https://www.apachefriends.org/index.html).

2. Clone o repositório ou coloque os arquivos do projeto na pasta `htdocs` do seu servidor XAMPP. Por padrão, essa pasta está localizada em `C:\xampp\htdocs`.

3. Certifique-se de que o Apache e o MySQL estejam ativos no painel de controle do XAMPP.

4. Acesse o projeto através do seu navegador, normalmente em `http://localhost/parse-csv`.

### Linux

1. Instale um servidor web (por exemplo, Apache) e o PHP no seu sistema. Em sistemas baseados em Debian/Ubuntu, você pode fazer isso com o comando:

   ```bash
   sudo apt-get install apache2 php
   ```

2. Clone o repositório ou coloque os arquivos do projeto na pasta raiz do seu servidor web. Por padrão, a pasta raiz é `/var/www/html`.

3. Inicie o servidor web e o PHP. No Ubuntu, você pode usar:

   ```bash
   sudo systemctl start apache2
   sudo systemctl start php
   ```

4. Acesse o projeto através do seu navegador, normalmente em `http://localhost/parse-csv`.

## Uso

1. Acesse o projeto em seu navegador.

2. Na página inicial, você encontrará um formulário que permite fazer upload de arquivos no formato .txt ou .csv.

3. Selecione o arquivo desejado clicando no botão "Escolher Arquivo".

4. Após selecionar o arquivo, clique no botão "Enviar" para iniciar o processo de parseamento.

5. O arquivo será processado e o resultado será mostrado na tela. Você também terá a opção de fazer o download do arquivo de resultado.

## Estrutura do Projeto

- `index.html`: A página inicial do projeto com o formulário de upload.

- `process_upload.php`: O arquivo PHP responsável por receber e processar o upload do arquivo e chamar o `main.lua`.

- `main.lua`: O script Lua que contém a lógica para parsear os arquivos CNAB. Os resultados são armazenados em um arquivo de texto.

- `styles.css`: O arquivo de estilos CSS para a interface do usuário.

## Resultados

Após o processamento bem-sucedido de um arquivo, os resultados serão exibidos na tela e disponíveis para download. O arquivo de resultado é salvo no servidor e pode ser acessado posteriormente.

## Observações

- O projeto foi desenvolvido e testado em ambiente local. Certifique-se de configurar um ambiente de servidor web apropriado para uso em produção.