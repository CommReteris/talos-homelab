variable "cluster_name" {
    default = "proxmox-talos-0"

}
variable "worker_node_count" {
    description = "Number of worker nodes for the cluster."
    type = number
    default = 2
}

variable "worker_node_memory" {
    description = "The amount of memory in MiB to give the worker nodes."
    type = number
    default = 4096
}

variable "control_plane_node_count" {
    description = "Number of control plane nodes for the cluster. Must be an odd number."
    type = number
    default = 3
    validation {
        condition = var.control_plane_node_count % 2 != 0
        error_message = "The control plane node count must be an odd number."
    }
}

variable "control_plane_node_memory" {
    description = "The amount of memory in MiB to give the control plane nodes."
    type = number
    default = 2048
}

variable "iso_image_location" {
    description = "The location of the Talos iso image on the proxmox host (<storage pool>:<content type>/<file name>.iso)."
    type = string
    default = "nfs-iso:iso/talos-amd64.iso"
}

variable "boot_disk_storage_pool" {
    description = "The name of the storage pool where boot disks for the cluster nodes will be stored."
    type = string
    default = "nfs-images"
}

variable "boot_disk_size" {
    description = "The size of the boot disks. A numeric string with G, M, or K appended ex: 512M or 32G."
    type = string
    default = "100G"
}

variable "network_bridge" {
    description = "The name of the network bridge on the Proxmox host."
    type = string
    default = "vmbr10"
}

variable "qemu_guest_agent" {
  default = 1
}

variable "proxmox_host_node" {
    description = "The name of the proxmox node where the cluster will be deployed"
    type = string
    default = "oneiros"
}

variable "proxmox_tls_insecure" {
    description = "If the TLS connection is insecure (self-signed). This is usually the case."
    type = bool
    default = true
}

variable "proxmox_debug" {
    description = "If the debug flag should be set when interacting with the Proxmox API."
    type = bool
    default = false
}

variable "PM_API_TOKEN_ID" {
  description = "PM_API_TOKEN_ID"
  type        = string
}

variable "PM_API_TOKEN_SECRET" {
  description = "PM_API_TOKEN_SECRET"
  type        = string
}

variable "PROXMOX_IP" {
  description = "PROXMOX_IP"
  type        = string
}

variable "public_key_file" {
  description = "public_key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "private_key_file" {
  description = "private_key_file"
  type        = string
  default     = "~/.ssh/id_rsa"
}

variable "admin_password" {
  description = "admin Password"
  type        = string
}

variable "admin_user" {
  description = "admin Username"
  type        = string
}
