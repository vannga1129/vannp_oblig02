# output "sql_server_id" {
#   value = azurerm_sql_server.sqlserver.id
# }

# output "sql_database_id" {
#   value = azurerm_sql_database.sqldatabase.id
# }

# Output for Azure SQL Server
output "sql_server_id" {
  description = "The ID of the Azure SQL Server"
  value       = azurerm_mssql_server.sqlserver.id
}

output "sql_server_name" {
  description = "The name of the Azure SQL Server"
  value       = azurerm_mssql_server.sqlserver.name
}

output "sql_server_location" {
  description = "The location of the Azure SQL Server"
  value       = azurerm_mssql_server.sqlserver.location
}

output "sql_server_administrator_login" {
  description = "The administrator login name for the Azure SQL Server"
  value       = azurerm_mssql_server.sqlserver.administrator_login
}

output "sql_server_fully_qualified_domain_name" {
  description = "The fully qualified domain name of the Azure SQL Server"
  value       = azurerm_mssql_server.sqlserver.fully_qualified_domain_name
}

# Output for Azure SQL Database
output "sql_database_id" {
  description = "The ID of the Azure SQL Database"
  value       = azurerm_mssql_database.sqldatabase.id
}

output "sql_database_name" {
  description = "The name of the Azure SQL Database"
  value       = azurerm_mssql_database.sqldatabase.name
}

output "sql_database_max_size_gb" {
  description = "The maximum size in GB for the Azure SQL Database"
  value       = azurerm_mssql_database.sqldatabase.max_size_gb
}

output "sql_database_sku" {
  description = "The SKU of the Azure SQL Database"
  value       = azurerm_mssql_database.sqldatabase.sku_name
}

output "sql_database_enclave_type" {
  description = "The enclave type of the Azure SQL Database"
  value       = azurerm_mssql_database.sqldatabase.enclave_type
}
