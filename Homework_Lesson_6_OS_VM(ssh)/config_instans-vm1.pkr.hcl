packer {
  required_plugins {
    hyperv = {
      version = ">= 1.1.3"
      source  = "github.com/hashicorp/hyperv"
    }
  }
}

variable "iso_url" {
  type    = string
  default = "C:/OLD_LAPTOP/BOOKS/DEVOPS/Linux/ubuntu-24.04.4-live-server-amd64.iso"
}

variable "iso_checksum" {
  type    = string
  default = "none"
}

source "hyperv-iso" "ubuntu" {
  iso_url      = var.iso_url
  iso_checksum = var.iso_checksum

  disk_size    = 5120
  memory       = 2048
  cpus         = 2
  switch_name  = "Default Switch"
  generation   = 2

  cd_files     = ["./cloud-init/user-data", "./cloud-init/meta-data"]
  cd_label     = "cidata"

  boot_wait    = "5s"
  boot_command = ["<enter>"]

  ssh_username          = "maksim"
  ssh_private_key_file  = "./packer_key"
  ssh_timeout           = "30m"
  ssh_handshake_attempts = 100

  shutdown_command      = "echo 'maksim' | sudo -S shutdown -P now"
  output_directory      = "output-ubuntu"
  vm_name               = "Ubuntu-VM"
}

build {
  sources = ["source.hyperv-iso.ubuntu"]
}