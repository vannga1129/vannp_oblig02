variable "sqlserver_name" {
  description = "The name of the SQL server."
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

variable "sqldatabase_name" {
  description = "The name of the SQL database."
  type        = string
}

variable "sku_name" {
  description = "The name of the sku."
  type        = string
}
