variable "vm_window_name" {
  type = string
  description = "Name for the resources"
}

variable "resource_group_name" {
  type = string
  description = "Name of the resource group"
}

variable "location" {
    type = string
    description = "Azure region for the resources"
  
}

variable "vm_window_size" {
    type = string
    description = "Size of the virtual machine"
  
}
variable "admin_window_username" {
  type = string
  description = "Admin username for the virtual machine"
}

variable "admin_password" {
  type =string
  sensitive = true
description = "Admin password"
}

variable "window_network_interface_ids" {
  type = string
  description = "ID of the created network interface"
}

variable "window_os_disk_caching" {
  type = string
  description = "Caching type for the OS disk"
}

variable "window_storage_account_type" {
    type = string
    description = "Storage account type for the OS disk"
  
}
variable "tags" {
    type = map(string)
    description = "Map of tags to assign to the VM-window"
}
