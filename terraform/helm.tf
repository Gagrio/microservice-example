resource "helm_release" "grafana" {
  name             = "grafana"
  namespace        = "monitoring"
  create_namespace = true
  repository       = "https://grafana.github.io/helm-charts"
  chart            = "grafana"
  version          = "7.0.21"
  values           = [file("./helm-values/grafana.yaml")]
}

resource "helm_release" "prometheus" {
  name             = "prometheus-community"
  namespace        = "monitoring"
  create_namespace = true
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "prometheus"
  version          = "25.8.2"
  values           = [file("./helm-values/prometheus.yaml")]
}
