#======= FLUENT-BIT =======

module "fluent" {
   source = "../helm"
   count  = var.fluent == true ? 1 :0

   application_name             = var.fluent_name
   application_namespace        = var.fluent_namespace
   application_chart            = var.fluent_chart
   application_version          = var.fluent_version
   application_repository       = var.fluent_repository
   application_create_namespace = var.fluent_create_namespace

   application_values           = var.fluent_application_values
 }
