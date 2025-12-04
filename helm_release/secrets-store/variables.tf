#======= SECRET STORE =======

variable "secrets_store_name" {
  default = "secrets-store"
}

variable "secrets_store" {
  default = true
}

variable "secrets_store_namespace" {
  default = "secrets-store"
}

variable "secrets_store_chart" {
  default = "secrets-store-csi-driver"
}

variable "secrets_store_version" {
  default = "1.5.4"
}

variable "secrets_store_repository" {
  default = "https://kubernetes-sigs.github.io/secrets-store-csi-driver/charts"
}

variable "secrets_store_create_namespace" {
  default = false
}
