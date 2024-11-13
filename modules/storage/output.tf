output "primary_web_endpoint" {
  value = azurerm_storage_account.sa.primary_web_endpoint
}

# Output for Storage Account
output "storage_account_id" {
  description = "The ID of the Azure Storage Account"
  value       = azurerm_storage_account.sa.id
}

output "storage_account_name" {
  description = "The name of the Azure Storage Account"
  value       = azurerm_storage_account.sa.name
}

output "storage_account_primary_endpoint" {
  description = "The primary endpoint for the Azure Storage Account"
  value       = azurerm_storage_account.sa.primary_blob_endpoint
}

# Output for Storage Container
output "storage_container_id" {
  description = "The ID of the Azure Storage Container"
  value       = azurerm_storage_container.sc.id
}

output "storage_container_name" {
  description = "The name of the Azure Storage Container"
  value       = azurerm_storage_container.sc.name
}

# Output for Storage Blob
output "storage_blob_id" {
  description = "The ID of the Azure Storage Blob"
  value       = azurerm_storage_blob.sb.id
}

output "storage_blob_name" {
  description = "The name of the Azure Storage Blob"
  value       = azurerm_storage_blob.sb.name
}

output "storage_blob_url" {
  description = "The URL of the Azure Storage Blob"
  value       = azurerm_storage_blob.sb.url
}
