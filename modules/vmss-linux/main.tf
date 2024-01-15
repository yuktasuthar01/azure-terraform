resource "azurerm_linux_virtual_machine_scale_set" "vmss-linux" {
  name                = var.vmss_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  instances           = var.instances
  admin_username      = var.admin_username
  admin_password = var.admin_password
  admin_ssh_key {
    username   = var.admin_ssh_username
    public_key = var.public_key
  }
   os_disk {
    storage_account_type = var.storage_account_type
    caching              = var.os_caching
  }
  network_interface {
    name    = var.nic_name
    primary = var.primary

    ip_configuration {
      name      = var.ip_name
      primary   = var.primary
      subnet_id = var.subnet_id
    }
  }
  source_image_id = var.source_image_id

  
}