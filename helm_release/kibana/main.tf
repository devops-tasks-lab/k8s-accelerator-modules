#======= KIBANA =======

module "kibana" {
   source = "../helm"
   count  = var.kibana == true ? 1 :0

   application_name             = var.kibana_name
   application_namespace        = var.kibana_namespace
   application_chart            = var.kibana_chart
   application_version          = var.kibana_version
   application_repository       = var.kibana_repository
   application_create_namespace = var.kibana_create_namespace

   application_values           = var.kibana_application_values
 }
