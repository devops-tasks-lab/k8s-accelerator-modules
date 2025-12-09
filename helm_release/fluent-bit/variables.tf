#======= FLUENT-BIT =======

variable "fluent_name" {
  default = "fluent"
}

variable "fluent" {
  default = true
}

variable "fluent_namespace" {
  default = "fluent"
}

variable "fluent_chart" {
  default = "fluent-bit"
}

variable "fluent_version" {
  default = "0.54.0"
}

variable "fluent_repository" {
  default = "https://fluent.github.io/helm-charts"
}

variable "fluent_create_namespace" {
  default = true
}

variable "fluent_application_values" {
  default = []
}
