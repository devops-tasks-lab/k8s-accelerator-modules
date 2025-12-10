#======= AWS SC =======

variable "storage-class" {
  default = false
}

variable "sc_name" {
  default = "gp3"
}

variable "sc_type" {
  default = "gp3"
}

variable "sc_fsType" {
  default = "ext4"
}

variable "sc_reclaim_policy" {
  default = "Retain"
}

variable "sc_volume_binding_mode" {
  default = "WaitForFirstConsumer"
}
