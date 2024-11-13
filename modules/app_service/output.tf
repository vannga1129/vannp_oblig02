# output "id" {
#   value = data.azurerm_service_plan.sp.id
# }

output "service_plan_id" {
  description = "The ID of the Azure Service Plan"
  value       = azurerm_service_plan.sp.id
}

output "service_plan_name" {
  description = "The name of the Azure Service Plan"
  value       = azurerm_service_plan.sp.name
}

output "service_plan_location" {
  description = "The location of the Azure Service Plan"
  value       = azurerm_service_plan.sp.location
}

output "service_plan_sku" {
  description = "The SKU of the Azure Service Plan"
  value       = azurerm_service_plan.sp.sku_name
}

output "service_plan_os_type" {
  description = "The OS type of the Azure Service Plan"
  value       = azurerm_service_plan.sp.os_type
}

output "primary_web_endpoint" {
  description = "The primary web endpoint of the App Service"
  value       = "https://${module.app_service.app_service_default_hostname}"
}

