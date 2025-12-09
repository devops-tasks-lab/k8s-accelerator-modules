#======= VICTORIA METRICS =======

module "victoriametrics" {
   source = "../helm"
   count  = var.victoriametrics == true ? 1 :0

   application_name             = var.victoriametrics_name
   application_namespace        = var.victoriametrics_namespace
   application_chart            = var.victoriametrics_chart
   application_version          = var.victoriametrics_version
   application_repository       = var.victoriametrics_repository
   application_create_namespace = var.victoriametrics_create_namespace

   application_values           = var.victoriametrics_application_values
 }
