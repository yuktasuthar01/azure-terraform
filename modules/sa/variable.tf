variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
  default = "value"
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
}

variable "account_tier" {
  description = "The storage account tier (Standard or Premium)."
  type        = string
}

variable "account_replication_type" {
  description = "The storage account replication type (LRS, GRS, RAGRS, ZRS, etc.)."
  type        = string
}

variable "tags" {
  description = "A map of tags for the resources."
  type        = map(string)
}
