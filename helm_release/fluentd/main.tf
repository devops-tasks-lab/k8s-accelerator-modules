#======= FLUENTD =======

module "fluentd" {
   source = "../helm"
   count  = var.fluentd == true ? 1 :0

   application_name             = var.fluentd_name
   application_namespace        = var.fluentd_namespace
   application_chart            = var.fluentd_chart
   application_version          = var.fluentd_version
   application_repository       = var.fluentd_repository
   application_create_namespace = var.fluentd_create_namespace

   application_values           = var.fluentd_application_values
 }
