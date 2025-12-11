resource "yandex_vpc_network" "vpc" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "subnets" {
  count = length(var.subnet_cidrs)

  name           = "${var.vpc_name}-subnet-${count.index}"
  zone           = element(["ru-central1-a", "ru-central1-b", "ru-central1-d"], count.index)
  network_id     = yandex_vpc_network.vpc.id
  v4_cidr_blocks = [element(var.subnet_cidrs, count.index)]
}

## cluster.tf

resource "yandex_kubernetes_cluster" "cluster" {
  name       = var.cluster_name
  network_id = yandex_vpc_network.vpc.id

  master {
    version = var.kubernetes_version

    placement {
      zone      = var.zone
      subnet_id = element(yandex_vpc_subnet.subnets.*.id, 0)
    }
  }

  release_channel = "REGULAR"
}

## node_group.tf

resource "yandex_kubernetes_node_group" "node_group" {
  cluster_id = yandex_kubernetes_cluster.cluster.id
  name       = "${var.cluster_name}-ng"

  version = yandex_kubernetes_cluster.cluster.master[0].version

  allocation_policy {
    # default allocation policy
  }

  instance_template {
    platform_id = "standard-v3"

    resources {
      memory        = var.node_memory_gb
      cores         = var.node_cores
      core_fraction = 100
    }

    boot_disk {
      initialize_params {
        size = var.disk_size_gb
      }
    }

    network_interface {
      subnet_id = element(yandex_vpc_subnet.subnets.*.id, 0)
    }

    metadata = {
      # add ssh-keys here if you want access to nodes
    }
  }

  scale_policy {
    auto_scale {
      min_node_count = var.min_node_count
      max_node_count = var.max_node_count
    }
  }
}

## outputs.tf

# output "cluster_id" {
#   value = yandex_kubernetes_cluster.cluster.id
# }

# output "cluster_name" {
#   value = yandex_kubernetes_cluster.cluster.name
# }

# output "node_group_id" {
#   value = yandex_kubernetes_node_group.node_group.id
# }




