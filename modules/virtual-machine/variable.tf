variable "vm_name" {
  description = "Name for the resources"
  type        = string
}

variable "location" {
  description = "Azure region for the resources"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

# variable "private_ip_address_allocation" {
#   description = "Private IP address allocation method"
#   type        = string
# }

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the virtual machine"
  type        = string
}
variable "network_interface_id" {
    type = string
    description = "ID of the created network interface"
  
}
variable "storage_account_type" {
  type        = string
  description = "Storage account type for the OS disk"
}
variable "os_disk_caching" {
  type        = string
  description = "Caching type for the OS disk"
  default = "ReadWrite"
}

# variable "os_disk"{
#     type =string
#     description = "A os disk block as defined below"

# }

variable "admin_ssh_public_key" {
    type = string
    description = "The Public Key which should be used for authentication."
}
variable "source_image_id" {
    description = "The source image for the virtual machine"
    type        = string

 }
# # Source_image_reference
# variable "publisher" {
#     type = string
#     description = "Specifies the publisher of the image used to create the virtual machines. "
  
# }
# variable "offer" {
#   type = string
#   description = " Specifies the offer of the image used to create the virtual machines"
# }
# variable "sku" {
#     type = string
#     description = " Specifies the SKU of the image used to create the virtual machines"
  
# }
# variable "module_version" {
#   description = "The version of the module"
#   type        = string
# }

variable "tags" {
 description = "Map of tags to assign to the VM"
 type       = map(string)
 default    = {}
}