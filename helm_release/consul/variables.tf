#======= COUNSUL =======

variable "consul_name" {
  default = "consul"
}

variable "consul" {
  default = true
}

variable "consul_namespace" {
  default = "consul"
}

variable "consul_chart" {
  default = "consul"
}

variable "consul_version" {
  default = "1.9.1"
}

variable "consul_repository" {
  default = "https://helm.releases.hashicorp.com"
}

variable "consul_create_namespace" {
  default = true
}

variable "consul_application_values" {
  default = []
}
