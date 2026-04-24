provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.vm_zone
}

module "vm" {
  source = "../Task1Advanced/modules/vm"

  vm_name                  = var.vm_name
  vm_zone                  = var.vm_zone
  vm_platform_id           = var.vm_platform_id
  vm_cores                 = var.vm_cores
  vm_memory                = var.vm_memory
  vm_core_fraction         = var.vm_core_fraction
  boot_disk_size           = var.boot_disk_size
  boot_disk_type           = var.boot_disk_type
  boot_disk_image_id       = var.boot_disk_image_id
  data_disk_name           = var.data_disk_name
  data_disk_size           = var.data_disk_size
  data_disk_type           = var.data_disk_type
  network_subnet_id        = var.network_subnet_id
  network_assign_public_ip = var.network_assign_public_ip
  ssh_user                 = var.ssh_user
  ssh_public_key           = var.ssh_public_key
}
