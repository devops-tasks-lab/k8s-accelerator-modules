#======= LOKI =======

variable "jenkins_name" {
  default = "jenkins"
}

variable "jenkins" {
  default = false
}

variable "jenkins_namespace" {
  default = "jenkins"
}

variable "jenkins_chart" {
  default = "jenkins"
}

variable "jenkins_version" {
  default = "5.8.110"
}

variable "jenkins_repository" {
  default = "https://charts.jenkins.io"
}

variable "jenkins_create_namespace" {
  default = true
}

variable "jenkins_application_values" {
  default = [ ]
}
