variable "role_name" {
  default = "eks-cluster-role"
}

variable "cluster_count" {
  default = 1
}

variable "service" {
  default = "eks.amazonaws.com"
}

variable "action" {
  default = "sts:AssumeRole"
}
