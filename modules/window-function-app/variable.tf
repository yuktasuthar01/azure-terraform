variable "window_function_name" {
  type        = string
  description = " Specifies the name of the Window Function App"
}
variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists. "
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Function App. "
}
variable "active_directory_auth_setttings" {
  description = "Active directory authentication provider settings for app service"
  type        = any
  default     = {}
}
variable "client_certificate_exclusion_paths" {
  type        = string
  default     = null
  description = "Paths to exclude when using client certificates, separated by ;"

}
variable "content_share_force_disabled" {
  type        = bool
  default     = false
  description = "Should Content Share Settings be disabled. "
}
variable "ftp_publish_basic_authentication_enabled" {
  type        = bool
  default     = true
  description = " Should the default FTP Basic Authentication publishing profile be enabled."
}
variable "public_network_access_enabled" {
  type        = bool
  default     = true
  description = "Should public network access be enabled for the Function App"
}
variable "key_vault_reference_identity_id" {
  type        = string
  default     = null
  description = "The User Assigned Identity ID used for accessing KeyVault secrets."
}
variable "zip_deploy_file" {
  type        = string
  default     = null
  description = "The local path and filename of the Zip packaged application to deploy to this Windows Function App."
}

variable "app_insights_daily_cap_in_gb" {
  type        = string
  description = "The daily cap for app insights"
  default     = null
}

variable "app_insights_daily_data_cap_notifications_disabled" {
  type        = bool
  description = "Whether notifications are enabled or not, defaults to false"
  default     = null
}

variable "app_insights_force_customer_storage_for_profile" {
  type        = bool
  description = "Whether the force profile is being enabled"
  default     = null
}

variable "app_insights_internet_ingestion_enabled" {
  type        = bool
  description = "Whether internet ingestion is enabled"
  default     = null
}

variable "app_insights_internet_query_enabled" {
  type        = bool
  description = "Whether or not your workspace can be queried from the internet"
  default     = null
}

variable "app_insights_local_authentication_disabled" {
  type        = bool
  description = "Whether local authentication is disabled"
  default     = null
}

variable "app_insights_name" {
  type        = string
  description = "The name of the app insights"
  default     = null
}

variable "app_insights_sampling_percentage" {
  type        = string
  description = "The app insights sampling percentage"
  default     = null
}

variable "app_insights_type" {
  type        = string
  description = "What the type of app insights to be made is"
  default     = null
}
variable "app_settings" {
  description = "Function App application settings"
  type        = map(any)
  default     = {}
}

variable "app_insights_settings_map" {
  description = "Function App application settings"
  type        = map(any)
  default     = {}
}

variable "backup_sas_url" {
  description = "URL SAS to backup"
  type        = string
  default     = ""
}

variable "builtin_logging_enabled" {
  type        = bool
  description = "Whether AzureWebJobsDashboards should be enabled, default is true"
  default     = true
}

variable "client_certificate_enabled" {
  type        = bool
  description = "Whether client certificate auth is enabled, default is false"
  default     = false
}

variable "client_certificate_mode" {
  type        = string
  description = "The option for client certificates"
  default     = "Optional"
}

variable "connect_app_insights_to_law_workspace" {
  type        = bool
  description = "Whether the app insights being made should be connected to a workspace id"
  default     = null
}

variable "connection_strings" {
  description = "Connection strings for App Service"
  type        = list(map(string))
  default     = []
}

variable "daily_memory_time_quota" {
  type        = number
  description = "The amount of memory in gigabyte-seconds that your app can consume per day, defaults to 0"
  default     = 0
}

variable "enable_app_insights" {
  type        = bool
  description = "Whether app insights should be made"
  default     = false
}

variable "enabled" {
  type        = bool
  description = "Is the function app enabled? Default is true"
  default     = true
}

variable "force_disabled_content_share" {
  type        = bool
  description = "Should content share be disabled in storage account? Default is false"
  default     = false
}

variable "virtual_network_subnet_id" {
  description = "ID of the subnet to associate with the Function App (VNet integration)"
  type        = string
  default     = null
}

variable "functions_extension_version" {
  type        = string
  description = "The function extension version"
}

variable "https_only" {
  description = "Disable http procotol and keep only https"
  type        = bool
  default     = true
}

variable "identity_ids" {
  description = "Specifies a list of user managed identity ids to be assigned to the VM."
  type        = list(string)
  default     = []
}

variable "identity_type" {
  description = "The Managed Service Identity Type of this Virtual Machine."
  type        = string
  default     = ""
}

variable "service_plan_id" {
  description = "Id of the App Service Plan for Function App hosting"
  type        = string
}

variable "settings" {
  description = "Specifies the Authentication enabled or not"
  default     = false
}

variable "site_config" {
  description = "Site config for App Service. See documentation https://www.terraform.io/docs/providers/azurerm/r/app_service.html#site_config. IP restriction attribute is not managed in this block."
  type        = any
  default     = {}
}

variable "storage_account_access_key" {
  description = "Access key the storage account to use. If null a new storage account is created"
  type        = string
  sensitive   = true

}

variable "storage_account_name" {
  description = "Name of storage account"
  type        = string
}

variable "storage_container_name" {
  description = "The name of the storage container to keep backups"
  default     = null
}

variable "storage_key_vault_secret_id" {
  type        = string
  description = "The secret ID for the connection string of the storage account used by the function app"
  default     = ""
}

variable "storage_uses_managed_identity" {
  type        = bool
  description = "If you want the storage account to use a managed identity instead of a access key"
  default     = false
}

variable "tags" {
  description = "Tags to be applied to resources (inclusive)"
  type = object({
    environment = string
    project     = string
  })
}

variable "extra_tags" {
  description = "extra tags to be applied to resources (in addition to the tags above)"
  type        = map(string)
  default     = {}
}

variable "workspace_id" {
  type        = string
  description = "if app insights count is set to true, the ID of the workspace, not the workspace_id"
  default     = null
}
