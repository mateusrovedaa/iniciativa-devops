# Aula 5
Esse repositório contém o código do desafio da aula 5 sobre Prometheus e Grafana.

## Dependências
Instalar o Helm: https://helm.sh/docs/intro/install/

Site utilizado para procurar pacotes para o helm: https://artifacthub.io/

Configurar os repositórios do grafana e do prometheus.

## Comandos

Instalar o prometheus
```
helm upgrade --install prometheus prometheus-community/prometheus --set alertmanager.enabled=false,server.persistentVolume.enabled=false,server.service.type=LoadBalancer,server.global.scrape_interval=10s,pushgateway.enabled=false
```

Instalar o grafana
```
helm upgrade --install grafana grafana/grafana --set service.type=LoadBalancer
```