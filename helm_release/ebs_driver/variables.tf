#======= EBS DRIVER =======

variable "ebs_driver_name" {
  default = "ebs_driver"
}

variable "ebs_driver" {
  default = false
}

variable "ebs_driver_namespace" {
  default = "ebs_driver"
}

variable "ebs_driver_chart" {
  default = "aws-ebs-csi-driver"
}

variable "ebs_driver_version" {
  default = "2.45.1"
}

variable "ebs_driver_repository" {
  default = "https://kubernetes-sigs.github.io/aws-ebs-csi-driver"
}

variable "ebs_driver_create_namespace" {
  default = false
}

variable "ebs_driver_application_values" {
  default = [ ]
}
