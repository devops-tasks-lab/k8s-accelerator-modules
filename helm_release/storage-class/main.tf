#======= AWS EBS SC =======

resource "kubernetes_storage_class_v1" "gp3" {
  #  count = var.storage-class == true ? 1 : 0
  metadata {
    name = var.sc_name
    annotations = {
      "storageclass.kubernetes.io/is-default-class" = "true" 
    }
  }

  storage_provisioner = "ebs.csi.aws.com"

  parameters = {
    type    = var.sc_type
    fsType  = var.sc_fsType
  }

  reclaim_policy     = var.sc_reclaim_policy
  volume_binding_mode = var.sc_volume_binding_mode
}
