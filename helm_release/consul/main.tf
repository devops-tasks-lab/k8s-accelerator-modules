#======= COUNSUL =======

module "consul" {
   source = "../helm"
   count  = var.consul == true ? 1 :0

   application_name             = var.consul_name
   application_namespace        = var.consul_namespace
   application_chart            = var.consul_chart
   application_version          = var.consul_version
   application_repository       = var.consul_repository
   application_create_namespace = var.consul_create_namespace

   application_values           = var.consul_application_values
 }
