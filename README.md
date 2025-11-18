# Projeto Spring Boot - CRUD com Documento e Categoria

## Descrição do Projeto

Este projeto implementa uma aplicação Spring Boot que realiza operações **CRUD** sobre duas entidades relacionadas: `Documento` e `Categoria`. A aplicação utiliza **Spring Data JPA** para persistência e disponibiliza **documentação da API via Swagger**.

### Funcionalidades

* CRUD completo para `Documento` e `Categoria`.
* Relacionamento entre Documento e Categoria.
* Persistência com Spring Data JPA.
* Documentação interativa via Swagger.

## Tecnologias Utilizadas

* Java 21
* Spring Boot
* Spring Data JPA
* H2 / MySQL (ou outro banco de dados de sua escolha)
* Swagger (Springfox ou springdoc-openapi)
* Maven

## Estrutura do Projeto

```
src/main/java/com/example/projeto
│
├─ controller/    # Controllers REST para Documento e Categoria
├─ model/         # Classes de entidade Documento e Categoria
├─ repository/    # Interfaces JPA Repository
└─ service/       # Serviços para regras de negócio
```

## Como Executar Localmente

1. Clone o repositório:

```bash
git clone <seu-repositorio-github>
cd <nome-do-projeto>
```

2. Configure o banco de dados em `application.properties` ou `application.yml`.

3. Compile e execute o projeto:

```bash
mvn clean install
mvn spring-boot:run
```

4. A aplicação estará disponível em `http://localhost:8080`.

## Documentação Swagger

Após iniciar a aplicação, a documentação da API pode ser acessada em:

```
http://localhost:8080/swagger-ui.html
```

* A documentação permite testar os endpoints diretamente do navegador.
* Tutorial oficial do Swagger: [https://swagger.io/docs/](https://swagger.io/docs/)

## Publicação

A aplicação foi hospedada no Render. Link para acesso:

```
https://seu-projeto-render.onrender.com
```

Documentação Swagger publicada:

```
https://seu-projeto-render.onrender.com/swagger-ui.html
```