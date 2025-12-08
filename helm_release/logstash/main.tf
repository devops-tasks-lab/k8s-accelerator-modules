#======= LOKI =======

module "logstash" {
   source = "../helm"
   count  = var.logstash == true ? 1 :0

   application_name             = var.logstash_name
   application_namespace        = var.logstash_namespace
   application_chart            = var.logstash_chart
   application_version          = var.logstash_version
   application_repository       = var.logstash_repository
   application_create_namespace = var.logstash_create_namespace

   application_values           = var.logstash_application_values
 }
