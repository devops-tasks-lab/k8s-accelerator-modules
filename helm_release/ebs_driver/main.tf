#======== EBS DRIVER ========

module "ebs_driver" {
  source = "../helm"
  count = var.ebs_driver == true ? 1 :0

  application_name             = var.ebs_driver_name
  application_namespace        = var.ebs_driver_namespace
  application_chart            = var.ebs_driver_chart
  application_version          = var.ebs_driver_version
  application_repository       = var.ebs_driver_repository
  application_create_namespace = var.ebs_driver_create_namespace
  application_values           = var.ebs_driver_application_values
  #  application_values = [
  #    <<-EOT
  #  controller:
  #    serviceAccount:
  #      name: ebs-csi-controller-sa
  #      create: true
  #      annotations:
  #        eks.amazonaws.com/role-arn: ${module.oidec_token.ebs_csi_role_arn}
  #  EOT
  #  ]

  #depends_on = [module.node-group]
}

