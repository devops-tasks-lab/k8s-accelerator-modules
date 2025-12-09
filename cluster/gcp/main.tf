resource "google_compute_network" "vpc_network" {
  count                   = var.gcp_cluster_count
  name                    = var.vpc_name
  auto_create_subnetworks = var.auto_create_subnetworks
}

# Создание кластера Kubernetes
resource "google_container_cluster" "primary" {
  count    = var.gcp_cluster_count
  name     = var.cluster_name
  location = var.region

  network             = google_compute_network.vpc_network[count.index].name
  deletion_protection = var.deletion_protection


  # Определяем пул узлов с автоскейлингом
  node_pool {
    name       = var.node_pool_name
    node_count = var.node_count
    node_config {
      service_account = google_service_account.gke_sa[count.index].email
      disk_size_gb    = var.disk_size_gb
      machine_type    = var.machine_type
      oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
    }

    autoscaling {
      min_node_count = var.min_node_count
      max_node_count = var.max_node_count
    }
  }
}
# Создаём SA для узлов (и для Helm)
resource "google_service_account" "gke_sa" {
  count        = var.gcp_cluster_count
  account_id   = "${var.cluster_name}-sa"
  display_name = "GKE Node & Helm SA"
}

# Даём права: container.admin + serviceAccountUser
resource "google_project_iam_member" "container_admin" {
  count   = var.gcp_cluster_count
  project = var.project_id
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.gke_sa[count.index].email}"
}

resource "google_project_iam_member" "sa_user" {
  count   = var.gcp_cluster_count
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "serviceAccount:${google_service_account.gke_sa[count.index].email}"
}
