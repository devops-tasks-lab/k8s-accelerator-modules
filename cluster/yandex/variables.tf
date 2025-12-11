variable "yc_cloud_id" {}
variable "yc_folder_id" {}
variable "yc_service_account_key_file" {
  description = "Path to service account JSON key created with `yc iam key create`"
}
variable "zone" {
  description = "Default compute zone"
  default     = "ru-central1-a"
}


variable "cluster_name" {
  default = "my-k8s-cluster"
}


variable "vpc_name" {
  default = "k8s-vpc"
}


variable "subnet_cidrs" {
  type    = list(string)
  default = ["10.10.0.0/24", "10.11.0.0/24", "10.12.0.0/24"]
}


variable "node_count" {
  default = 1
}
variable "min_node_count" {
  default = 1
}
variable "max_node_count" {
  default = 3
}
variable "node_memory_gb" {
  default = 1
}
variable "node_cores" {
  default = 1
}
variable "disk_size_gb" {
  default = 30
}
