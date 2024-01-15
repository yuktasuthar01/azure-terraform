variable "vmss_name" {
  type =string
  description = "The name of the Linux Virtual Machine Scale Set"
}

variable "resource_group_name" {
  type = string
  description = " The name of the Resource Group in which the Linux Virtual Machine Scale Set should be exist"
}
variable "location" {
  type = string
  description = "Azure location where the Linux Virtual Machine Scale Set should exist"
}

variable "sku" {
  type = string
description = " The Virtual Machine SKU for the Scale Set"
}
variable "instances" {
  type = number
  default = null
  description = "The number of Virtual Machines in the Scale Set."
  }
variable "admin_username" {
  type = string
  description = "The username of the local administrator on each Virtual Machine Scale Set instance"
}
variable "admin_password" {
  type = string
  sensitive = true
  description = " The Password which should be used for the local-administrator on this Virtual Machine"
}
variable "admin_ssh_username" {
  type =string
  description = "The Username for which this Public SSH Key should be configured."
}
variable "public_key" {
  type = string
  description = " The Public Key which should be used for authentication"
}

variable "storage_account_type" {
  type = string
  description = "value"
}
variable "os_caching" {
  type = string
  description = "value"
  default = "ReadWrite"
}

#network interface 
variable "nic_name" {
  type = string
  description = "value"
}
variable "primary" {
  type = string
  description = "value"
  default = false
}
# ip_configuration

variable "ip_name" {
  type = string
  description = "The Name which should be used for this IP Configuration."
}
variable "subnet_id" {
  type = string
  description = "The ID of the Subnet which this IP Configuration should be connected to."
}
variable "source_image_id" {
  type =string
  description = "The source image for the virtual machine scale set"
}