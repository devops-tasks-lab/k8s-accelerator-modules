#======== ARGO CD ========

module "argocd" {
   source = "../helm"
   count  = var.argocd == true ? 1 : 0

   application_name             = var.argocd_name
   application_namespace        = var.argocd_namespace
   application_chart            = var.argocd_chart
   application_version          = var.argocd_version
   application_repository       = var.argocd_repository
   application_create_namespace = var.argocd_create_namespace
 }
