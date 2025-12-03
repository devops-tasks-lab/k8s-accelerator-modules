#======== NGINX CONTROLER ========

module "nginx_controler" {
  source = "../helm"
  count  = var.nginx_controler == true ? 1 : 0

  application_name             = var.nginx_controler_name
  application_namespace        = var.nginx_controler_namespace
  application_chart            = var.nginx_controler_chart
  application_version          = var.nginx_controler_version
  application_repository       = var.nginx_controler_repositor
  application_create_namespace = var.nginx_controler_create_namespace
}
