terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

resource "yandex_compute_disk" "secondary" {
  name = var.data_disk_name
  type = var.data_disk_type
  zone = var.vm_zone
  size = var.data_disk_size
}

resource "yandex_compute_instance" "vm" {
  name = var.vm_name
  zone = var.vm_zone
  platform_id = var.vm_platform_id

  resources {
    cores = var.vm_cores
    memory = var.vm_memory
    core_fraction = var.vm_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.boot_disk_image_id
      size = var.boot_disk_size
      type = var.boot_disk_type
    }
  }

  secondary_disk {
    disk_id = yandex_compute_disk.secondary.id
  }

  network_interface {
    subnet_id = var.network_subnet_id
    nat = var.network_assign_public_ip
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${var.ssh_public_key}"
  }
}
