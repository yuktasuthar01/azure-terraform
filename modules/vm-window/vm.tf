resource "azurerm_windows_virtual_machine" "vm-window" {
     name                = var.vm_window_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                =  var.vm_window_size
  admin_username      = var.admin_window_username
  admin_password      =  var.admin_password
  network_interface_ids = [ var.window_network_interface_ids]
   os_disk {
    caching              = var.window_os_disk_caching
    storage_account_type = var.window_storage_account_type
  }
tags = var.tags
}