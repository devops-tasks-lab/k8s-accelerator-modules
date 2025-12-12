#======= FLUENTD =======

variable "fluentd_name" {
  default = "fluentd"
}

variable "fluentd" {
  default = true
}

variable "fluentd_namespace" {
  default = "fluentd"
}

variable "fluentd_chart" {
  default = "fluentd"
}

variable "fluentd_version" {
  default = "0.5.3"
}

variable "fluentd_repository" {
  default = "https://fluent.github.io/helm-charts"
}

variable "fluentd_create_namespace" {
  default = true
}

variable "fluentd_application_values" {
  default = []
}
