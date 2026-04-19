variable "cloud_id" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "token" {
  type = string
}

variable "vm_zone" {
  type = string
}

variable "network_subnet_id" {
  type = string
}

variable "ssh_user" {
  type = string
}

variable "ssh_public_key" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_platform_id" {
  type = string
}

variable "vm_cores" {
  type = number
}

variable "vm_memory" {
  type = number
}

variable "vm_core_fraction" {
  type = number
}

variable "boot_disk_image_id" {
  type = string
}

variable "boot_disk_size" {
  type = number
}

variable "boot_disk_type" {
  type = string
}

variable "data_disk_name" {
  type = string
}

variable "data_disk_size" {
  type = number
}

variable "data_disk_type" {
  type = string
}

variable "network_assign_public_ip" {
  type = bool
}
