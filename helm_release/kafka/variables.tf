#======= KAFKA =======

variable "kafka_name" {
  default = "kafka"
}

variable "kafka" {
  default = true
}

variable "kafka_namespace" {
  default = "kafka"
}

variable "kafka_chart" {
  default = "strimzi-kafka-operator"
}

variable "kafka_version" {
  default = "0.49.0"
}

variable "kafka_repository" {
  default = "https://strimzi.io/charts/"
}

variable "kafka_create_namespace" {
  default = false
}

variable "kafka_application_values" {
  default = []
}
