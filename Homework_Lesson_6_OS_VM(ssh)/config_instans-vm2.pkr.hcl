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
  default = "C:/OLD_LAPTOP/BOOKS/DEVOPS/Linux/ubuntu-26.04-live-server-amd64.iso"
}

variable "iso_checksum" {
  type    = string
  default = "none"   
}

source "hyperv-iso" "vm2" {
  iso_url          = var.iso_url
  iso_checksum     = var.iso_checksum
  disk_size        = 5120        
  memory           = 2048
  cpus             = 2
  switch_name      = "Internal_switch" 
  http_directory   = "./instance_vm2"
  boot_wait        = "5s"
boot_command = [
  "e<wait>",
  "<down><down><down><end>",
  " autoinstall ds=nocloud-net;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ ---",
  "<f10>"
]
  ssh_username        = "maksim"
  ssh_private_key_file = "./packer_key"
  shutdown_command    = "echo 'maksim' | sudo -S shutdown -P now"
  output_directory    = "output-vm2"
  vm_name             = "VM2-Ubuntu"
}

build {
  sources = ["source.hyperv-iso.vm2"]

  provisioner "shell" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y iptables-persistent netfilter-persistent"
    ]
  }
}