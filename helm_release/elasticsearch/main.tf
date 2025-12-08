#======= GRAFANA =======

module "elasticsearch" {
   source = "../helm"
   count  = var.elasticsearch == true ? 1 :0

   application_name             = var.elasticsearch_name
   application_namespace        = var.elasticsearch_namespace
   application_chart            = var.elasticsearch_chart
   application_version          = var.elasticsearch_version
   application_repository       = var.elasticsearch_repository
   application_create_namespace = var.elasticsearch_create_namespace

   application_values           = var.elasticsearch_application_values
 }
