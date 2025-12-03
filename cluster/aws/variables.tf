variable "aws_cluster_count" {
  default = 1
}

#======= VPC =======

variable "region" {
  default = "eu-central-1"
}

variable "eks_vpc" {
  default = "10.0.0.0/16"
}

variable "eks_subnet_count" {
  default = 2
}

variable "enable_dns_hostnames" {
  default = true
}

variable "enable_dns_support" {
  default = true
}


#======= EKS CLUSTER =======

variable "eks_cluter_name" {
  default = "my-eks-cluster"
}


variable "eks_enabled_cluster_log_types" {
  default = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
}



#======= EKS NODE GROUP =======

variable "node_group_name" {
  default = "example-node-group"
}

variable "node_ami_type" {
  default = "AL2023_x86_64_STANDARD"
}

variable "node_instance_types" {
  default = ["t3.medium"]
}

variable "node_desired_size" {
  default = 2
}

variable "node_max_size" {
  default = 3
}

variable "node_min_size" {
  default = 1
}

variable "node_ec2_ssh_key" {
  default = "eu-central-1-ec2-key"
}

#======= EKS SG =======

variable "sg_name" {
  default = "k8s-sg"
}

variable "ports" {
  default = ["80", "443"]
}

variable "protocol" {
  default = "tcp"
}

#======= CLUSTER ROLE & POLICY =======

variable "cluster_role_name" {
  default = "eks-cluster-role"
}

variable "cluster_service" {
  default = "eks.amazonaws.com"
}

variable "cluster_action" {
  default = "sts:AssumeRole"
}

variable "cluster_policy_arn" {
  default = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

variable "cluster_service_policy_arn" {
  default = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
}

#======= NODE ROLE & POLICY =======


variable "node_role_name" {
  default = "eks-worker-role"
}

variable "node_service" {
  default = "ec2.amazonaws.com"
}

variable "node_action" {
  default = "sts:AssumeRole"
}

variable "worker_policy_arn" {
  default = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

variable "registry_policy_arn" {
  default = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

variable "cni_policy_arn" {
  default = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

