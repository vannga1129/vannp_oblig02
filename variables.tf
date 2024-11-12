variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
}

variable "rg_name" {
  description = "The name of the Resource Group."
  type        = string
}

variable "sa_name" {
  description = "The base name of the Storage Account."
  type        = string
}

variable "sp_name" {
  description = "The name of the App Service Plan."
  type        = string
}

variable "sqlserver_name" {
  description = "The name of the SQL Server."
  type        = string
}

variable "sqldatabase_name" {
  description = "The name of the SQL Database."
  type        = string
}

variable "pip_name" {
  description = "The name of the Public IP for the Load Balancer."
  type        = string
}

variable "lb_name" {
  description = "The name of the Load Balancer."
  type        = string
}

variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string
}

variable "nsg_name" {
  description = "The name of the Network Security Group."
  type        = string
}

variable "subnet1_name" {
  description = "The name of the first subnet."
  type        = string
}

variable "subnet2_name" {
  description = "The name of the second subnet."
  type        = string
}

variable "sc_name" {
  description = "The name of the Storage Container."
  type        = string
}

variable "sb_name" {
  description = "The name of the Storage Blob."
  type        = string
}

variable "sku_name" {
  description = "The name of the sku."
  type        = string
}