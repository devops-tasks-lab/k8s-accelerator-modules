# NAT Gateway
resource "yandex_vpc_gateway" "nat" {
  name = "${var.cluster_name}-nat"
}

# Route Table
resource "yandex_vpc_route_table" "nat" {
  name       = "${var.cluster_name}-nat-rt"
  network_id = yandex_vpc_network.vpc.id

  static_route {
    destination_prefix = "0.0.0.0/0"
    gateway_id         = yandex_vpc_gateway.nat.id
  }
}
resource "yandex_iam_service_account" "k8s_cluster" {
  name = "${var.cluster_name}-cluster-sa"
}

resource "yandex_iam_service_account" "k8s_nodes" {
  name = "${var.cluster_name}-nodes-sa"
}

resource "yandex_vpc_network" "vpc" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "subnets" {
  count           = length(var.subnet_cidrs)
  route_table_ids = [yandex_vpc_route_table.nat.id]

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
    version   = var.kubernetes_version
    public_ip = true
    zonal {
      zone      = var.zone
      subnet_id = yandex_vpc_subnet.subnets[0].id
    }
  }

  service_account_id      = yandex_iam_service_account.k8s_cluster.id
  node_service_account_id = yandex_iam_service_account.k8s_nodes.id
}


## node_group.tf

resource "yandex_kubernetes_node_group" "node_group" {
  cluster_id = yandex_kubernetes_cluster.cluster.id
  name       = "${var.cluster_name}-nodes"

  allocation_policy {
    location {
      zone = var.zone
    }
  }

  instance_template {
    resources {
      cores  = var.node_cores
      memory = var.node_memory_gb
    }

    boot_disk {
      type = "network-ssd"
      size = var.disk_size_gb
    }

    network_interface {
      subnet_ids = [yandex_vpc_subnet.subnets[0].id]
    }
  }

  scale_policy {
    auto_scale {
      initial = var.min_node_count
      min     = var.min_node_count
      max     = var.max_node_count
    }
  }
}
