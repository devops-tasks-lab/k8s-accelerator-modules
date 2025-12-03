#======= GRAFANA =======

module "prometheus" {
   source = "../helm"
   count  = var.prometheus == true ? 1 :0

   application_name             = var.prometheus_name
   application_namespace        = var.prometheus_namespace
   application_chart            = var.prometheus_chart
   application_version          = var.prometheus_version
   application_repository       = var.prometheus_repository
   application_create_namespace = var.prometheus_create_namespace
 }
