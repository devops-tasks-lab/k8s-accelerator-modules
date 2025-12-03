#======= EXTERNAL DNS =======

variable "external_dns_name" {
  default = "external-dns"
}

variable "external_dns" {
  default = true
}

variable "external_dns_namespace" {
  default = "external-dns"
}

variable "external_dns_chart" {
  default = "external-dns"
}

variable "external_dns_version" {
  default = "1.19.0"
}

variable "external_dns_repository" {
  default = "https://kubernetes-sigs.github.io/external-dns"
}

variable "external_dns_create_namespace" {
  default = false
}
