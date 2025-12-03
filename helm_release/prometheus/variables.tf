#======= PROMETHEUS =======

variable "prometheus_name" {
  default = "prometheus"
}

variable "prometheus" {
  default = true
}

variable "prometheus_namespace" {
  default = "prometheus"
}

variable "prometheus_chart" {
  default = "prometheus"
}

variable "prometheus_version" {
  default = "27.45.0"
}

variable "prometheus_repository" {
  default = "https://prometheus-community.github.io/helm-charts"
}

variable "prometheus_create_namespace" {
  default = true
}
