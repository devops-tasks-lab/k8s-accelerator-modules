#======= VICTORIA METRICS =======

variable "victoriametrics_name" {
  default = "victoriametrics"
}

variable "victoriametrics" {
  default = true
}

variable "victoriametrics_namespace" {
  default = "victoriametrics"
}

variable "victoriametrics_chart" {
  default = "victoria-metrics-single"
}

variable "victoriametrics_version" {
  default = "0.26.0"
}

variable "victoriametrics_repository" {
  default = "https://victoriametrics.github.io/helm-charts"
}

variable "victoriametrics_create_namespace" {
  default = true
}

variable "victoriametrics_application_values" {
  default = []
}
