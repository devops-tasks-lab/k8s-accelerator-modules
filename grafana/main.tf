#======= GRAFANA =======

module "grafana" {
   source = "../helm"
   count  = var.grafana == true ? 1 :0

   application_name             = var.grafana_name
   application_namespace        = var.grafana_namespace
   application_chart            = var.grafana_chart
   application_version          = var.grafana_version
   application_repository       = var.grafana_repository
   application_create_namespace = var.grafana_create_namespace
 }
