# output "load_balancer_id" {
#   value = azurerm_lb.lb.id
# }


# Output for Azure Public IP

output "public_ip_address" {
  description = "The public IP address assigned"
  value       = azurerm_public_ip.pip.ip_address
}

output "public_ip_name" {
  description = "The name of the Azure Public IP resource"
  value       = azurerm_public_ip.pip.name
}


