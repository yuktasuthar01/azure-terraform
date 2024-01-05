resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  kind = "Linux"
  reserved = true
  sku {
    tier = var.app_service_sku_tier
    size = var.app_service_sku_size
  }
}

resource "azurerm_app_service" "web_app" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

  site_config {
    always_on = var.app_service_always_on
  }
}
