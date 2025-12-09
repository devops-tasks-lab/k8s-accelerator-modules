#======= ISTIO =======

variable "istio_name" {
  default = "istio"
}

variable "istio" {
  default = true
}

variable "istio_namespace" {
  default = "istio-system"
}

variable "istio_chart" {
  default = "istiod"
}

variable "istio_version" {
  default = "1.28.1"
}

variable "istio_repository" {
  default = "https://istio-release.storage.googleapis.com/charts"
}

variable "istio_create_namespace" {
  default = true
}

variable "istio_application_values" {
  default = []
}
