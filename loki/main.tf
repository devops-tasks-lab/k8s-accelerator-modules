#======= GRAFANA =======

module "loki" {
   source = "../helm"
   count  = var.loki == true ? 1 :0

   application_name             = var.loki_name
   application_namespace        = var.loki_namespace
   application_chart            = var.loki_chart
   application_version          = var.loki_version
   application_repository       = var.loki_repository
   application_create_namespace = var.loki_create_namespace

   application_values           = var.loki_application_values
 }
