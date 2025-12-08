#======= GRAFANA =======

module "jenkins" {
   source = "../helm"
   count  = var.jenkins == true ? 1 :0

   application_name             = var.jenkins_name
   application_namespace        = var.jenkins_namespace
   application_chart            = var.jenkins_chart
   application_version          = var.jenkins_version
   application_repository       = var.jenkins_repository
   application_create_namespace = var.jenkins_create_namespace

   application_values           = var.jenkins_application_values
 }
