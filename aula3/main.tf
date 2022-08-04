terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = ""
}

resource "digitalocean_kubernetes_cluster" "k8s_iniciativa" {
  name   = "k8s-iniciativa"
  region = "nyc1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.23.9-do.0"

  node_pool {
    name       = "default"
    size       = "s-2vcpu-2gb"
    node_count = 3
  }
}

resource "local_file" "kube_config" {
  content  = digitalocean_kubernetes_cluster.k8s_iniciativa.kube_config.0.raw_config
  filename = "kube_config.yaml"
}
