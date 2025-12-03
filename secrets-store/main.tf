#======= SECRET STORE =======

module "secrets-store" {
   source = "../helm"
   count  = var.secrets_store == true ? 1 :0

   application_name             = var.secrets_store_name
   application_namespace        = var.secrets_store_namespace
   application_chart            = var.secrets_store_chart
   application_version          = var.secrets_store_version
   application_repository       = var.secrets_store_repository
   application_create_namespace = var.secrets_store_create_namespace
 }
