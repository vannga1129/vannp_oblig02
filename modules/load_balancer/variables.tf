variable "pip_name" {
  description = "The name of the Public IP."
  type        = string
}

variable "lb_name" {
  description = "The name of the Load Balancer."
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
