#======= ISTIO =======

module "istio" {
   source = "../helm"
   count  = var.istio == true ? 1 :0

   application_name             = var.istio_name
   application_namespace        = var.istio_namespace
   application_chart            = var.istio_chart
   application_version          = var.istio_version
   application_repository       = var.istio_repository
   application_create_namespace = var.istio_create_namespace

   application_values           = var.istio_application_values
 }
