# Aula 1
Esse repositório contém o código do desafio da aula 1 sobre Docker.

# Dependências
Ter o docker instalado na máquina. Para isso, basta seguir [esse](https://docs.docker.com/engine/install/) tutorial.

Recomenda-se instalar o docker-compose para facilitar o trabalho localmente.

# Como executar o projeto com docker
1. Executar o build da imagem
```
docker build -t app .
```

2. Rodar o container
```
docker container run -d -p 8080:8080 app
```

# Como executar o projeto com docker-compose
1. Executar o build da imagem
```
docker compose build
```

2. Rodar o container
```
docker compose up -d
```