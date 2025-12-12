#======= LOKI =======

variable "loki_name" {
  default = "loki"
}

variable "loki" {
  default = true
}

variable "loki_namespace" {
  default = "loki"
}

variable "loki_chart" {
  default = "loki"
}

variable "loki_version" {
  default = "6.46.0"
}

variable "loki_repository" {
  default = "https://grafana.github.io/helm-charts"
}

variable "loki_create_namespace" {
  default = true
}

variable "loki_application_values" {
  default = []
}
