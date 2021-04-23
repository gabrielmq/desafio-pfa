# Desafio PFA ()

A proposta do desafio era desenvolver uma aplicação que se conecta a uma base de dados e retorna os nomes de alguns modulos
do curso Full Cycle. A aplicação deveria rodar dentro de um container, com um nginx recebendo os requests e redirecionando eles
para o container em que a aplicação roda.

## Pré-requisitos

- docker v20.10.6+

## Como rodar

- Após clonar o projeto, execute o script ```startup.sh```
- Após executar o script ```startup.sh```, faça uma requisição na url ```http://localhost:8081/modules``` para visualizar alguns modulos do curso.
