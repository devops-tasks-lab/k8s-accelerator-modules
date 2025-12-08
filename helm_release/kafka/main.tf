#======= KAFKA =======

module "kafka" {
   source = "../helm"
   count  = var.kafka == true ? 1 :0

   application_name             = var.kafka_name
   application_namespace        = var.kafka_namespace
   application_chart            = var.kafka_chart
   application_version          = var.kafka_version
   application_repository       = var.kafka_repository
   application_create_namespace = var.kafka_create_namespace

   application_values           = var.kafka_application_values
 }
