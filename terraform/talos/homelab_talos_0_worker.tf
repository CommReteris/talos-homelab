resource "proxmox_vm_qemu" "talos-worker-node-0" {
    name        = "${var.cluster_name}-worker-0"
    iso         = var.iso_image_location
    target_node = "nuc1"
    vmid        = "210"
    qemu_os     = "l26" # Linux kernel type
    scsihw      = "virtio-scsi-pci"
    memory      = "45056"
    cores       = 8
    sockets     = 1
    numa        = true
    hotplug 	= "network,disk,usb"
    network {
        model  = "virtio"
        tag    = var.public_vlan
        bridge = var.public_network_bridge
        macaddr = "1a:10:50:55:00:00"
    }
    disk {
        type    = "virtio"
        size    = var.boot_disk_size
        storage = var.boot_disk_storage_pool
    }
}

resource "proxmox_vm_qemu" "talos-worker-node-1" {
    name        = "${var.cluster_name}-worker-1"
    iso         = var.iso_image_location
    target_node = "pve-lilslim"
    vmid        = "211"
    qemu_os     = "l26" # Linux kernel type
    scsihw      = "virtio-scsi-pci"
    memory      = "40960"
    cores       = 8
    sockets     = 1
    numa        = true
    hotplug 	= "network,disk,usb"
    network {
        model  = "virtio"
        tag    = var.public_vlan
        bridge = var.public_network_bridge
        macaddr = "1a:10:50:55:00:01"
    }
    disk {
        type    = "virtio"
        size    = var.boot_disk_size
        storage = var.boot_disk_storage_pool
    }
}

resource "proxmox_vm_qemu" "talos-worker-node-2" {
    name        = "${var.cluster_name}-worker-2"
    iso         = var.iso_image_location
    target_node = "pve-fatman"
    vmid        = "212"
    qemu_os     = "l26" # Linux kernel type
    scsihw      = "virtio-scsi-pci"
    memory      = "40960"
    cores       = 8
    sockets     = 1
    numa        = true
    hotplug 	= "network,disk,usb"
    network {
        model  = "virtio"
        tag    = var.public_vlan
        bridge = var.public_network_bridge
        macaddr = "1a:10:50:55:00:02"
    }
    disk {
        type    = "virtio"
        size    = var.boot_disk_size
        storage = var.boot_disk_storage_pool
    }
}

resource "proxmox_vm_qemu" "talos-worker-node-3" {
    name        = "${var.cluster_name}-worker-3"
    iso         = var.iso_image_location
    target_node = "pve-fatman"
    vmid        = "213"
    qemu_os     = "l26" # Linux kernel type
    scsihw      = "virtio-scsi-pci"
    memory      = "40960"
    cores       = 8
    sockets     = 1
    numa        = true
    hotplug 	= "network,disk,usb"
    network {
        model  = "virtio"
        tag    = var.public_vlan
        bridge = var.public_network_bridge
        macaddr = "1a:10:50:55:00:03"
    }
    disk {
        type    = "virtio"
        size    = var.boot_disk_size
        storage = var.boot_disk_storage_pool
    }
}

resource "proxmox_vm_qemu" "talos-worker-node-4" {
    name        = "${var.cluster_name}-worker-4"
    iso         = var.iso_image_location
    target_node = "pve-fatman"
    vmid        = "214"
    qemu_os     = "l26" # Linux kernel type
    scsihw      = "virtio-scsi-pci"
    memory      = "40960"
    cores       = 8
    sockets     = 1
    numa        = true
    hotplug 	= "network,disk,usb"
    network {
        model  = "virtio"
        tag    = var.public_vlan
        bridge = var.public_network_bridge
        macaddr = "1a:10:50:55:00:04"
    }
    disk {
        type    = "virtio"
        size    = var.boot_disk_size
        storage = var.boot_disk_storage_pool
    }
}