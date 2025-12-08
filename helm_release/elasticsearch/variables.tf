#======= LOKI =======

variable "elasticsearch_name" {
  default = "elasticsearch"
}

variable "elasticsearch" {
  default = true
}

variable "elasticsearch_namespace" {
  default = "elasticsearch"
}

variable "elasticsearch_chart" {
  default = "elasticsearch"
}

variable "elasticsearch_version" {
  default = "8.5.1"
}

variable "elasticsearch_repository" {
  default = "https://helm.elastic.co"
}

variable "elasticsearch_create_namespace" {
  default = true
}

variable "elasticsearch_application_values" {
  default = [ ]
}
