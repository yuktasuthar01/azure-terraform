variable "resource_group_name" {
  description = "The name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "app_service_sku_tier" {
  description = "The tier of the App Service SKU"
  type        = string
  default     = "Basic"
}

variable "app_service_sku_size" {
  description = "The size of the App Service SKU"
  type        = string
  default     = "B1"
}

variable "app_service_name" {
  description = "The name of the App Service"
  type        = string
}

variable "app_service_always_on" {
  description = "Enable or disable 'Always On' for the App Service"
  type        = bool
  default     = true
}

 variable "app_service_plan" {
  type = string
  description = "value"
 }