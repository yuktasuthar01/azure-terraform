variable "address_space" {
  description = "The address space of the virtual network"
  type        = list(string)
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
  default     = null
}

variable "location" {
  description = "The location of the virtual network"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "dns_servers" {
  description = "The DNS servers"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to be applied to resources (inclusive)"
  type = map(string)
}

variable "subnets" {
  description = "The subnets to create"
  
  type = list(object({
    name           = string
    address_prefix = string
    service_endpoints = optional(set(string))
    
    delegation = optional(object({
      name          = string
      service_name  = string 
      actions       = list(string)
    }))
  }))
}