# Aula 2
Esse repositório contém o código do desafio da aula 2 sobre Kubernetes.

# Dependências
Ter o docker instalado na máquina. Para isso, basta seguir [esse](https://docs.docker.com/engine/install/) tutorial.

Ter o KubeCTL instalado na máquina. Para isso, basta seguir [esse](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/) tutorial.

Ter o k3d instalado na máquina. Para isso, basta seguir [esse](https://k3d.io/v5.4.4/) tutorial.

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

# Como executar o projeto kubernetes
1. Entrar na pasta do kubernetes
```
cd k8s
```

2. Aplicar o manifesto e aguardar
```
kubectl apply -f deployment.yaml
```