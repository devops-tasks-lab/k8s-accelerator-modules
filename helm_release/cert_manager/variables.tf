#======= SERT MANAGER =======

variable "cert_manager_name" {
  default = "cert-manager"
}

variable "cert_manager" {
  default = true
}

variable "cert_manager_namespace" {
  default = "cert-manager"
}

variable "cert_manager_chart" {
  default = "cert-manager"
}

variable "cert_manager_version" {
  default = "v1.19.1"
}

variable "cert_manager_repository" {
  default = "https://charts.jetstack.io"
}

variable "cert_manager_create_namespace" {
  default = true
}

variable "cert_manager_application_values" {
  default = []
}
