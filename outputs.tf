# Output for Resource Group
output "resource_group_id" {
  description = "The ID of the Azure Resource Group"
  value       = azurerm_resource_group.rg.id
}

output "resource_group_name" {
  description = "The name of the Azure Resource Group"
  value       = azurerm_resource_group.rg.name
}


# Output for Database Module
output "sql_server_id" {
  description = "The ID of the SQL Server"
  value       = module.database.sql_server_id
}

output "sql_database_id" {
  description = "The ID of the SQL Database"
  value       = module.database.sql_database_id
}

# Output for Networking Module

output "subnet1_id" {
  description = "The ID of Subnet 1"
  value       = module.networking.subnet1_id
}

output "subnet2_id" {
  description = "The ID of Subnet 2"
  value       = module.networking.subnet2_id
}

# Output for Storage Account
output "primary_web_endpoint" {
  description = "The primary web endpoint of the App Service"
  value       = "https://${module.app_service.app_service_default_hostname}"
}

