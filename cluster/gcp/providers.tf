#terraform {
#  required_providers {
#    google = {
#      source  = "hashicorp/google"
#      version = "~> 5.0"
#    }
#    helm = {
#      source  = "hashicorp/helm"
#      version = "~> 2.0"
#    }
#  }
#}
#
#
#provider "google" {
#  credentials = file("/home/edgar/DevOps/google/google-cloud/prod-477310-607508ad8fed.json")
#  project     = "prod-477310"
#  region      = "us-central1"
#}
#
# Получение данных о GKE кластере
#data "google_container_cluster" "primary" {
#  name     = google_container_cluster.primary[0].name
#  location = google_container_cluster.primary[0].location
#}
#
#data "external" "gke_token" {
#  program = ["bash", "-c", "echo '{\"token\": \"'$(gcloud auth print-access-token)'\"}'"]
#}

# Провайдер Helm, который будет использовать настройки kubernetes
#provider "helm" {
#  kubernetes {
#    host                   = data.google_container_cluster.primary.endpoint
#    cluster_ca_certificate = base64decode(data.google_container_cluster.primary.master_auth.0.cluster_ca_certificate)
#    # The output key is now explicitly "token"
#    token                  = data.external.gke_token.result.token
#  }
#}
