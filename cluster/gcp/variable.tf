#======== VPC ========

variable "vpc_name" {
  default = "k8s-vpc"
}

variable "region" {
  default = "us-central1-a"
}

variable "auto_create_subnetworks" {
  default = "true"
}

#======= GOOGLE CLUSTER =======
variable "gcp_cluster_count" {
  default = 1
}

variable "cluster_name" {
  default = "k8s-cluster"
}

variable "deletion_protection" {
  default = false
}

variable "node_pool_name" {
  default = "k8s-node-pool"
}

variable "node_count" {
  default = 3
}

variable "machine_type" {
  default = "e2-medium"
}

variable "min_node_count" {
  default = 1
}

variable "max_node_count" {
  default = 4
}

#======== HELM APPLICATIONS =======

variable "ebs_driver_count" {
  default = 1
}

variable "grafana_count" {
  default = 1
}

variable "cert_meneger_count" {
  default = 1
}

variable "argo_cd_count" {
  default = 1
}

variable "nginx_controler_count" {
  default = 1
}


