output "name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The name of the Azure Resource Group."
}

output "id" {
  value       = azurerm_virtual_network.vnet.id
  description = "Virtual Network ID"
}

output "location" {
  value       = azurerm_virtual_network.vnet.location
  description = "The Azure region where the vnet will be created."
}

output "address_space" {
  value       = azurerm_virtual_network.vnet.address_space
  description = "The address space for the virtual network."
}
 
output "rg" {
  value = azurerm_virtual_network.vnet
  description = "Virtual Network Resources Group"
  
}

output "subnet_names" {
    value = azurerm_subnet.subnets.name
    description = "csdsfs"
}

output "subnet_ids" {
  value = azurerm_virtual_network.vnet.subnet_ids
  description = "value"
}
output "subnets" {
  description = "Map of all subnet resources keyed by subnet name"
  value       = azurerm_virtual_network.vnet.subnets
}
