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
