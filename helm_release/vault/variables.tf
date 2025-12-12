#======= VAULT =======

variable "vault_name" {
  default = "vault"
}

variable "vault" {
  default = true
}

variable "vault_namespace" {
  default = "vault"
}

variable "vault_chart" {
  default = "vault"
}

variable "vault_version" {
  default = "0.31.0"
}

variable "vault_repository" {
  default = "https://helm.releases.hashicorp.com"
}

variable "vault_create_namespace" {
  default = true
}

variable "vault_application_values" {
  default = []
}
