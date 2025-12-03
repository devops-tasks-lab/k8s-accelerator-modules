#======= ARGO CD =======

variable "argocd" {
  default = false
}

variable "argocd_name" {
  default = "argocd"
}

variable "argocd_namespace" {
  default = "argocd"
}

variable "argocd_chart" {
  default = "argo-cd"
}

variable "argocd_version" {
  default = "5.0.0"
}

variable "argocd_repository" {
  default = "https://argoproj.github.io/argo-helm"
}

variable "argocd_create_namespace" {
  default = true
}
