# Configuração do projeto

## Importando dados de arquivo excel

## Dependência
- Docker >= v20.10.5

## Projetos desenvolvidos com:
#### Microsserviço:
- Ruby v3.0.1
- Rails v6.1.3.1

#### Front-end:
- VueJS v2.6.11

## Executando o microsserviço:

Abra o terminal na raiz do projeto e entre pasta `microservice`:

`cd microservice`

Executar comando para construir os projeto back-end:

`sudo docker-compose build`

Executar o comando para inicializar:

`sudo docker-compose up -d`

Executar o comando para criar o banco de dados:

`sudo docker-compose exec api rake db:create`

Executar o comando para migrar o banco de dados:

`sudo docker-compose exec api rake db:migrate`

Executar o comando para efetuar o pré cadastro dos tipos de transações:

`sudo docker-compose exec api rake db:seed`

## Rodando os testes automatizados

Execute o comando:

`sudo docker-compose exec api bundle exec rspec`

## Executando o front-end:

Abra um novo terminal na raiz do projeto e entre na pasta  `client`:

`cd client`

Executar comando para construir o projeto:

`sudo docker-compose build`

Executar o comando para inicializar o projeto:

`sudo docker-compose up -d`

Acesse o endereço http://localhost:8080