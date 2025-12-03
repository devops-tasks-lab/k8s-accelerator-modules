output "gcp_cluster_name" {
  value = var.gcp_cluster_count == 1 ? google_container_cluster.primary[0].name : 0
}

output "gcp_cluster_location" {
  value = var.gcp_cluster_count == 1 ? google_container_cluster.primary[0].location : 0
}
