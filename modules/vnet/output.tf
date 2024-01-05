output "name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The name of the Azure Resource Group."
}

output "vnet_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The name for Virtual Network"
}

output "location" {
  value       = azurerm_virtual_network.vnet.location
  description = "The Azure region where the vnet will be created."
}

output "address_space" {
  value       = azurerm_virtual_network.vnet.address_space
  description = "The address space for the virtual network."
}
 
# output "tags" {
#   value = azurerm_network_security_group.name.tags
#   description = "The tags for the VNet"
  
# }

