output "app_service_name" {
  value = azurerm_app_service.web_app.name
  description = "The name of the Azure App Service"
  
}
# output "app_service_url" {
#   description = "URL of the deployed App Service"
#   value       = azurerm_web_app.web_app.default_site_hostname
# }
output "app_service_plan_id" {
  value = azurerm_app_service.web_app.app_service_plan_id
  description = "The ID of the Azure App Service Plan to associate with the App Service"
}
output "web_app" {
  value = azurerm_app_service.web_app
}