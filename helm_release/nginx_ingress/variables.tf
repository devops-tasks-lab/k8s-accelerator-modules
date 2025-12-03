#======= NGINX CONTROLER =======

variable "nginx_controler" {
  default = false
}

variable "nginx_controler_name" {
  default = "nginx-ingress"
}

variable "nginx_controler_namespace" {
  default = "ingress-nginx"
}

variable "nginx_controler_chart" {
  default = "ingress-nginx"
}

variable "nginx_controler_version" {
  default = "4.12.3"
}

variable "nginx_controler_repositor" {
  default = "https://kubernetes.github.io/ingress-nginx"
}

variable "nginx_controler_create_namespace" {
  default = true
}
