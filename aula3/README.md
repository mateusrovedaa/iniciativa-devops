# Aula 3
Esse repositório contém o código do desafio da aula 3 sobre Terraform.

# Dependências
Ter o terraform instalado na máquina. Para isso, basta seguir [esse](https://www.terraform.io/downloads) tutorial.

# Como executar o projeto
1. Executar o init do terraform para baixar os plugins
```
terraform init
```

2. Configurar o token da API da DigitalOcean

3. Rodar o terraform
```
terraform apply
```

4. Executar o kubernates
``` 
kubectl apply -f deployment.yaml
```