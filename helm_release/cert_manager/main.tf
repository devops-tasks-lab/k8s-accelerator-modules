#======= CERT MANAGER =======

module "cert_manager" {
   source = "../helm"
   count  = var.cert_manager == true ? 1 :0

   application_name             = var.cert_manager_name
   application_namespace        = var.cert_manager_namespace
   application_chart            = var.cert_manager_chart
   application_version          = var.cert_manager_version
   application_repository       = var.cert_manager_repository
   application_create_namespace = var.cert_manager_create_namespace

   application_values           = var.cert_manager_application_values
 }
