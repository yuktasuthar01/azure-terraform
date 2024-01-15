resource "azurerm_virtual_network" "vnet" {
  name                = coalesce(var.vnet_name, "${var.tags.project}-${var.tags.environment}-vnet")
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  dns_servers         = var.dns_servers
    
    tags = var.tags
}

resource "azurerm_subnet" "subnets" {
  for_each             = { for s in var.subnets : s.name => s }

  name                 = each.value.name
  resource_group_name  = azurerm_virtual_network.vnet.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [each.value.address_prefix]
  service_endpoints    = each.value.service_endpoints

  dynamic "delegation" {
    for_each = each.value.delegation == null ? [] : [each.value.delegation]
    content {
      name = delegation.value.name
      service_delegation {
        name    = delegation.value.service_name
        actions = delegation.value.actions
      }
    }
  }
  depends_on = [ azurerm_virtual_network.vnet ]
}
    
