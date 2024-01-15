output "vm_name" {
  description = "The name of the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "vm_id" {
  description = "The ID of the virtual machine"
  value       = azurerm_linux_virtual_machine.vm.id
}
output "vm_location" {
 description = "The location of the virtual machine"
 value      = azurerm_linux_virtual_machine.vm.location
}
output "vm_resource_group_name" {
 description = "The name of the resource group where the VM is located"
 value      = azurerm_linux_virtual_machine.vm.resource_group_name
}

output "vm_size" {
 description = "The size of the virtual machine"
 value      = azurerm_linux_virtual_machine.vm.size
}

output "vm_admin_username" {
 description = "The admin username for the virtual machine"
 value      = azurerm_linux_virtual_machine.vm.admin_username
}

output "vm_network_interface_id" {
 description = "The ID of the network interface attached to the VM"
 value      = azurerm_linux_virtual_machine.vm.network_interface_ids[0]
}

output "vm_os_disk_caching" {
 description = "The caching type for the OS disk"
 value      = azurerm_linux_virtual_machine.vm.os_disk[0].caching
}

output "vm_os_disk_storage_account_type" {
 description = "The storage account type for the OS disk"
 value      = azurerm_linux_virtual_machine.vm.os_disk[0].storage_account_type
}

output "vm_tags" {
 description = "The tags assigned to the VM"
 value      = azurerm_linux_virtual_machine.vm.tags
}