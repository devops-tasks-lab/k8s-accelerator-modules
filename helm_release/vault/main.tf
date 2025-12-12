#======= VAULT =======

module "vault" {
   source = "../helm"
   count  = var.vault == true ? 1 :0

   application_name             = var.vault_name
   application_namespace        = var.vault_namespace
   application_chart            = var.vault_chart
   application_version          = var.vault_version
   application_repository       = var.vault_repository
   application_create_namespace = var.vault_create_namespace

   application_values           = var.vault_application_values
 }
