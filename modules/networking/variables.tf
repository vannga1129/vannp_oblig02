variable "nsg_name" {
  description = "The name of the Network Security Group."
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

variable "vnet_name" {
  description = "The name of the Virtual Network."
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
