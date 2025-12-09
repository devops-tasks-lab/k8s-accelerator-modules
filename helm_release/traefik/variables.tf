#======= TRAEFIK =======

variable "traefik_name" {
  default = "traefik"
}

variable "traefik" {
  default = true
}

variable "traefik_namespace" {
  default = "traefik"
}

variable "traefik_chart" {
  default = "traefik"
}

variable "traefik_version" {
  default = "37.4.0"
}

variable "traefik_repository" {
  default = "https://traefik.github.io/charts"
}

variable "traefik_create_namespace" {
  default = true
}

variable "traefik_application_values" {
  default = []
}
