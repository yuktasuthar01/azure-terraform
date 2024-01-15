output "vmss_instance_ips" {
  value       = azurerm_linux_virtual_machine_scale_set.vmss-linux.network_interface[*].ip_configuration[0].private_ip_address
  description = "List of private IP addresses of instances in the Virtual Machine Scale Set"
}

output "vmss_public_ips" {
  value       = azurerm_linux_virtual_machine_scale_set.vmss-linux.network_interface[*].ip_configuration[0].public_ip_address
  description = "List of public IP addresses of instances in the Virtual Machine Scale Set"
}

output "vmss_admin_username" {
  value       = azurerm_linux_virtual_machine_scale_set.vmss-linux.admin_username
  description = "Admin username for the Virtual Machine Scale Set"
}

output "vmss_nic_ids" {
  value       = azurerm_linux_virtual_machine_scale_set.vmss-linux.network_interface[*].id
  description = "List of IDs of the Network Interfaces in the Virtual Machine Scale Set"
}
