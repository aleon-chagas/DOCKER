## Visão Geral

Este projeto é um formulário web responsivo em HTML, CSS e JavaScript, hospedado em um container Docker com Apache. O formulário coleta informações do usuário e exibe os dados no console, podendo ser facilmente adaptado para envio a um backend.

***

## Estrutura dos Arquivos

- **index.html**: Página principal do formulário.
- **formulario.css**: Estilização moderna e responsiva do formulário.
- **script.js**: Manipulação do DOM e captura dos dados do formulário.
- **README.md**: Instruções de uso.
- **Public-HTML/**: Pasta que deve conter todos os arquivos HTML, CSS e JS servidos pelo Apache.

***

## Pré-requisitos

- Docker instalado em sua máquina.
- Pasta `Public-HTML` no diretório atual com todos os arquivos do formulário (`index.html`, `formulario.css`, `script.js`).

***

## Como executar o projeto

### 1. Iniciar o container Apache

```bash
docker run -d --name apache-container -p 8000:80 -v $(pwd)/Public-HTML/:/usr/local/apache2/htdocs/ httpd
```

- O comando acima sobe o Apache, expondo o serviço na porta 8000 e servindo os arquivos da pasta `Public-HTML`.[^1]


### 2. Acessar o formulário pelo navegador

Abra:

```
http://localhost:8000
```

- Você verá o formulário web interativo e estilizado.


### 3. Acessar o terminal do container

```bash
docker exec -it apache-container /bin/bash
```

- Permite executar comandos dentro do ambiente do Apache.

***

## Gerenciando o Container

- **Iniciar**:

```bash
docker start apache-container
```

- **Parar**:

```bash
docker stop apache-container
```

- **Reinício automático**:

```bash
docker update --restart=always apache-container
docker update --restart=no apache-container
```


***

## Funcionamento do Formulário

- O envio do formulário dispara um script que coleta dados dos campos, inclusive múltiplos checkboxes.[^2]
- Os dados são mostrados no console do navegador e um alerta confirma o envio.
- Para enviar os dados para um backend, basta editar a URL e utilizar o exemplo comentado no `script.js`.

***

## Customização e Estilo

- O CSS usa variáveis e é responsivo, garantindo boa experiência em desktop e dispositivos móveis.[^3]
- Edite `formulario.css` para modificar cores, espaçamentos ou responsividade conforme desejar.

***

## Dicas

- Certifique-se de que todos os arquivos estejam dentro da pasta `Public-HTML` antes de iniciar o container.
- Para depuração, abra o console do navegador (F12) e verifique os dados enviados.

***

## Créditos

Projeto inicial desenvolvido para facilitar testes e aprendizados com containers, formulários responsivos e integração web.

***

## 📜 Licença

Projeto sob **Licença MIT**. Veja o arquivo LICENSE para mais detalhes.

***

> Contribuições são bem-vindas! Abra issues e PRs 😄
