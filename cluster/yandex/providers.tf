terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.120.0"
    }
  }
  required_version = ">= 1.1.0"
}


provider "yandex" {
  cloud_id                 = var.yc_cloud_id
  folder_id                = var.yc_folder_id
  service_account_key_file = var.yc_service_account_key_file
  zone                     = var.zone
}
