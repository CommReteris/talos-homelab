resource "proxmox_vm_qemu" "talos-control-plane-node-0" {
    name        = "${var.cluster_name}-controlplane-0"
    iso         = var.iso_image_location
    full_clone  = false
    target_node = "supermike"
    agent       = var.qemu_guest_agent
    vmid        = "300"
    qemu_os     = "l26" # Linux kernel type
    memory      = var.control_plane_node_memory
    cores       = 2
    sockets     = 1
    hotplug     = "network,disk,usb"
    network {
        model  = "virtio"
        bridge = var.network_bridge
        macaddr = "1a:10:50:00:00:00"
    }
    disk {
        type    = "virtio"
        size    = var.boot_disk_size
        storage = var.boot_disk_storage_pool
    }
}

resource "proxmox_vm_qemu" "talos-control-plane-node-1" {
    name        = "${var.cluster_name}-controlplane-1"
    iso         = var.iso_image_location
    full_clone  = false
    target_node = "oneiros"
    agent       = var.qemu_guest_agent
    vmid        = "301"
    qemu_os     = "l26" # Linux kernel type
    memory      = var.control_plane_node_memory
    cores       = 2
    sockets     = 1
    hotplug     = "network,disk,usb"
    network {
        model  = "virtio"
        bridge = var.network_bridge
        macaddr = "1a:10:50:00:00:01"
    }
    disk {
        type    = "virtio"
        size    = var.boot_disk_size
        storage = var.boot_disk_storage_pool
    }
}

resource "proxmox_vm_qemu" "talos-control-plane-node-2" {
    name        = "${var.cluster_name}-controlplane-2"
    iso         = var.iso_image_location
    full_clone  = false
    target_node = "thinkpenguin"
    agent       = var.qemu_guest_agent
    vmid        = "302"
    qemu_os     = "l26" # Linux kernel type
    memory      = var.control_plane_node_memory
    cores       = 2
    sockets     = 1
    hotplug     = "network,disk,usb"
    network {
        model  = "virtio"
        bridge = var.network_bridge
        macaddr = "1a:10:50:00:00:02"
    }
    disk {
        type    = "virtio"
        size    = var.boot_disk_size
        storage = var.boot_disk_storage_pool
    }
}
