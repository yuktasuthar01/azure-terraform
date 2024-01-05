variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}
variable "location" {
  description = "The Azure region where the vnet will be created."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "dns_servers" {
  description = "List of IP address of DNS servers"
  type        = list(string)
  default = []
}

variable "resource_group_name" {
    description = "value"
    type = string
}

variable "subnets" {
  description = "List of subnets with delegation information"
  type        = list(object({
    subnet_name     = string
    address_prefix  = string
    security_group  = string
    delegations     = list(object({
      name         = string
      service_name = string
      actions      = list(string)
    }))
  }))
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet."
  default = null
}

# variable "address_prefix" {
#   type        = string
#   description = "The address prefix to use for the subnet."
# }

# variable "security_group" {
#   type    = string
#   default = null
#   description = "The name or identifier of the network security group associated with the subnet."
# }

variable "tags" {
  type    = map(string)
  default = null
  description = "A map of tags for the resources."
}

variable "service_name" {
    type = string
    default = null

  
}
variable "actions" {
    type = string
    default = null
  
}