variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "westeurope"
}

variable "rg_name" {
  description = "The name of the Resource Group."
  type        = string
  default     = "rgtf-oblig2"
}

variable "sa_name" {
  description = "The base name of the Storage Account."
  type        = string
  default     = "satfoblig2"
}

variable "sp_name" {
  description = "The name of the App Service Plan."
  type        = string
  default     = "sptf-oblig2"
}

variable "sqlserver_name" {
  description = "The name of the SQL Server."
  type        = string
  default     = "sqlstf-oblig2"
}

variable "sqldatabase_name" {
  description = "The name of the SQL Database."
  type        = string
  default     = "sqldtf-oblig2"
}

variable "pip_name" {
  description = "The name of the Public IP for the Load Balancer."
  type        = string
  default     = "piptf-oblig2"

}

variable "lb_name" {
  description = "The name of the Load Balancer."
  type        = string
  default     = "lbtf-oblig2"
}

variable "vnet_name" {
  description = "The name of the Virtual Network."
  type        = string
  default     = "vnettf-oblig2"
}

variable "nsg_name" {
  description = "The name of the Network Security Group."
  type        = string
  default     = "nsgtf-oblig2"
}

variable "subnet1_name" {
  description = "The name of the first subnet."
  type        = string
  default     = "subnet1-tf-oblig2"
}

variable "subnet2_name" {
  description = "The name of the second subnet."
  type        = string
  default     = "subnet2-tf-oblig2"
}

variable "sc_name" {
  description = "The name of the Storage Container."
  type        = string
  default     = "sctfoblig2"
}

variable "sb_name" {
  description = "The name of the Storage Blob."
  type        = string
  default     = "sbtfoblig2"
}

variable "sku_name" {
  description = "The name of the sku."
  type        = string
  default     = "B1"
}