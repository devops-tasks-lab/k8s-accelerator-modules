#======= EXTERNAL DNS =======

module "external_dns" {
   source = "../helm"
   count  = var.external_dns == true ? 1 :0

   application_name             = var.external_dns_name
   application_namespace        = var.external_dns_namespace
   application_chart            = var.external_dns_chart
   application_version          = var.external_dns_version
   application_repository       = var.external_dns_repository
   application_create_namespace = var.external_dns_create_namespace
 }
