terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.24.0"
    }
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.3.7"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.12.1"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

provider "minikube" {
  kubernetes_version = "v1.28.0"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
