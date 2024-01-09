resource "minikube_cluster" "minikube" {
  driver       = "docker"
  cluster_name = "minikube"
  cpus         = 1
  memory       = "4096m"
  disk_size    = "10240mb"
}
