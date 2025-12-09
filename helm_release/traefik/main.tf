#======= TRAEFIK =======

module "traefik" {
   source = "../helm"
   count  = var.traefik == true ? 1 :0

   application_name             = var.traefik_name
   application_namespace        = var.traefik_namespace
   application_chart            = var.traefik_chart
   application_version          = var.traefik_version
   application_repository       = var.traefik_repository
   application_create_namespace = var.traefik_create_namespace

   application_values           = var.traefik_application_values
 }
