output "name" {
  value       = azurerm_resource_group.sa.name
  description = "Name of the Azure Resource Group"
}

output "location" {
  value       = azurerm_resource_group.sa.location
  description = "The azure region where region is located"
}
output "name_sa" {
    value = azurerm_storage_account.sa.name
    description = "The name of the Azure Storage Account."
}
output "location_sa" {
  value       = azurerm_storage_account.sa.location
  description = "The azure region where region is located"
}

output "account_tier" {
    value = azurerm_storage_account.sa.access_tier
    description = "The storage account tier (Standard or Premium)."
}

output "account_replication_type" {
    value = azurerm_storage_account.sa.account_replication_type
    description = "The storage account replication type (LRS, GRS, RAGRS, ZRS, etc.)."
}
output "tags" {
  value = azurerm_storage_account.sa.tags
  description = "A map of tags for the resources."
}