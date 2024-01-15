resource "azurerm_linux_virtual_machine" "vm" {
    name                = var.vm_name
    resource_group_name = var.resource_group_name
    location            = var.location
    size                = var.vm_size
    admin_username = var.admin_username
    network_interface_ids = [var.network_interface_id]
   
     admin_ssh_key{
      username = var.admin_username
      public_key = var.admin_ssh_public_key
     }
  
    os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.storage_account_type
   }
  source_image_id = var.source_image_id
   tags = var.tags
}

