variable "Laptop_User" {
    description = "Proxmox username for API key on Laptop"
    type = string
    sensitive = true
}

variable "Laptop_Key" {
    description = "API key for my laptop instance"
    type = string
    sensitive = true
}

provider "proxmox" {
    pm_api_url = "https://192.168.20.131:8006/api2/json"
    pm_user = var.Laptop_User
    pm_password = var.Laptop_Key
    pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "my_vm" {
    name = "ubuntu"
    target_node = "pve"
    clone = "ubuntu.iso"
    storage = "local-lvm"
    cores = 2
    memory = 2048
}