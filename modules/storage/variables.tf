variable "sa_name" {
  description = "The name of the Storage Account."
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

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
}

variable "rg_name" {
  description = "The name of the Resource Group."
  type        = string
}
