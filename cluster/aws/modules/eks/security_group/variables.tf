variable "cluster_count" {
  default = 1
}

variable "vpc_id" {
  default = ""
}

variable "sg_name" {
  default = "eks_sg"
}

variable "cidr_blocks" {
  default = []
}

variable "ports" {
  default = ["80", "443"]
}

variable "protocol" {
  default = "tcp"
}
