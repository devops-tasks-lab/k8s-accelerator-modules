#======= KIBANA =======

variable "kibana_name" {
  default = "kibana"
}

variable "kibana" {
  default = true
}

variable "kibana_namespace" {
  default = "elastic"
}

variable "kibana_chart" {
  default = "kibana"
}

variable "kibana_version" {
  default = "8.5.1"
}

variable "kibana_repository" {
  default = "https://helm.elastic.co"
}

variable "kibana_create_namespace" {
  default = false
}

variable "kibana_application_values" {
  default = []
}
