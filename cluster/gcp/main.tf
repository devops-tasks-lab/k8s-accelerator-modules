resource "google_compute_network" "vpc_network" {
  count                   = var.gcp_cluster_count
  name                    = var.vpc_name
  auto_create_subnetworks = var.auto_create_subnetworks
}

resource "google_container_cluster" "primary" {
  count    = var.gcp_cluster_count
  name     = var.cluster_name
  location = var.region

  network             = google_compute_network.vpc_network[count.index].name
  deletion_protection = var.deletion_protection


  node_pool {
    name       = var.node_pool_name
    node_count = var.node_count

    node_config {
      machine_type = var.machine_type
      oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]


      disk_size_gb = var.disk_size_gb
      tags = ["my-gke-node"]
    }

    autoscaling {
      min_node_count = var.min_node_count
      max_node_count = var.max_node_count
    }
  }
}


resource "google_compute_firewall" "allow_ports" {
  name    = "allow-ports"
  network = google_compute_network.vpc_network[0].name

  dynamic "allow" {
    for_each = var.allowed_ports

    content {
      protocol = "tcp"
      ports    = [allow.value]
    }
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"

  target_tags   = ["my-gke-node"]
}

