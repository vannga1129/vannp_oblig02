locals {
  workspace_suffix = terraform.workspace == "default" ? "" : "${terraform.workspace}"

  rg_name          = terraform.workspace == "default" ? "${var.rg_name}" : "${var.rg_name}-${local.workspace_suffix}"
  sp_name          = terraform.workspace == "default" ? "${var.sp_name}" : "${var.sp_name}-${local.workspace_suffix}"
  sqlserver_name   = terraform.workspace == "default" ? "${var.sqlserver_name}" : "${var.sqlserver_name}-${local.workspace_suffix}"
  sqldatabase_name = terraform.workspace == "default" ? "${var.sqldatabase_name}" : "${var.sqldatabase_name}-${local.workspace_suffix}"
  pip_name         = terraform.workspace == "default" ? "${var.pip_name}" : "${var.pip_name}-${local.workspace_suffix}"
  lb_name          = terraform.workspace == "default" ? "${var.lb_name}" : "${var.lb_name}-${local.workspace_suffix}"
  vnet_name        = terraform.workspace == "default" ? "${var.vnet_name}" : "${var.vnet_name}-${local.workspace_suffix}"
  sa_name          = terraform.workspace == "default" ? "${var.sa_name}" : "${var.sa_name}${local.workspace_suffix}"
  sc_name          = terraform.workspace == "default" ? "${var.sc_name}" : "${var.sc_name}${local.workspace_suffix}"
  sb_name          = terraform.workspace == "default" ? "${var.sb_name}" : "${var.sb_name}${local.workspace_suffix}"
}

resource "random_string" "random_string" {
  length  = 8
  special = false
  upper   = false
}

# Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "${var.rg_name}${local.workspace_suffix}"
  location = var.location
}

# App Service Module
module "app_service" {
  source   = "./modules/app_service"
  sp_name  = "${lower(local.sp_name)}${random_string.random_string.result}"
  location = var.location
  rg_name  = azurerm_resource_group.rg.name
  sku_name = var.sku_name
}

# Database Module
module "database" {
  source           = "./modules/database"
  sqlserver_name   = "${lower(local.sqlserver_name)}${random_string.random_string.result}"
  sqldatabase_name = "${lower(local.sqldatabase_name)}${random_string.random_string.result}"
  location         = var.location
  rg_name          = azurerm_resource_group.rg.name
  sku_name         = var.sku_name
}

# Load Balancer Module
module "load_balancer" {
  source   = "./modules/load_balancer"
  pip_name = "${lower(local.pip_name)}${random_string.random_string.result}"
  lb_name  = "${lower(local.lb_name)}${random_string.random_string.result}"
  location = var.location
  rg_name  = azurerm_resource_group.rg.name
}

# Networking Module
module "networking" {
  source       = "./modules/networking"
  vnet_name    = "${lower(local.vnet_name)}${random_string.random_string.result}"
  location     = var.location
  rg_name      = azurerm_resource_group.rg.name
  nsg_name     = var.nsg_name
  subnet1_name = var.subnet1_name
  subnet2_name = var.subnet2_name
}

# Storage Module
module "storage" {
  source   = "./modules/storage"
  sa_name  = lower(local.sa_name)
  sc_name  = "${lower(local.sc_name)}${random_string.random_string.result}"
  sb_name  = "${lower(local.sb_name)}${random_string.random_string.result}"
  location = var.location
  rg_name  = azurerm_resource_group.rg.name
}