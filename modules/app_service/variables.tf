variable "sp_name" {
  description = "The name of the Service Plan."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
}

variable "rg_name" {
  description = "The name of the Resource Group."
  type        = string
}

variable "sku_name" {
  description = "The name of the sku."
  type        = string
}

variable "app_service_name" {
  description = "The name of the Azure App Service"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group where the App Service will be deployed"
  type        = string
}

variable "app_settings" {
  description = "Application settings for the App Service"
  type        = map(string)
  default     = {}  # Define default settings or leave empty
}
