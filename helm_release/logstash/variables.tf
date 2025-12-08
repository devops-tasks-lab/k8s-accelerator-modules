#======= LOGSTASH =======

variable "logstash_name" {
  default = "logstash"
}

variable "logstash" {
  default = false
}

variable "logstash_namespace" {
  default = "elasticsearch"
}

variable "logstash_chart" {
  default = "logstash"
}

variable "logstash_version" {
  default = "8.5.1"
}

variable "logstash_repository" {
  default = "https://helm.elastic.co"
}

variable "logstash_create_namespace" {
  default = true
}

variable "logstash_application_values" {
  default = []
}
