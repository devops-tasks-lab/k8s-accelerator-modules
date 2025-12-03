#======= GRAFANA =======

variable "grafana_name" {
  default = "grafana"
}

variable "grafana" {
  default = true
}

variable "grafana_namespace" {
  default = "grafana"
}

variable "grafana_chart" {
  default = "grafana"
}

variable "grafana_version" {
  default = "10.1.4"
}

variable "grafana_repository" {
  default = "https://grafana.github.io/helm-charts"
}

variable "grafana_create_namespace" {
  default = true
}
