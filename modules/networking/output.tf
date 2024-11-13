# output "vnet_id" {
#   value = azurerm_virtual_network.vnet.id
# }

# output "subnet_ids" {
#   value = [for subnet in [azurerm_subnet.subnet1, azurerm_subnet.subnet2] : subnet.id]
# }


# Output for Network Security Group
output "network_security_group_id" {
  description = "The ID of the Azure Network Security Group"
  value       = azurerm_network_security_group.nsg.id
}

output "network_security_group_name" {
  description = "The name of the Azure Network Security Group"
  value       = azurerm_network_security_group.nsg.name
}

# Output for Virtual Network

output "virtual_network_name" {
  description = "The name of the Azure Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "virtual_network_address_space" {
  description = "The address space of the Azure Virtual Network"
  value       = azurerm_virtual_network.vnet.address_space
}

# Output for Subnet 1
output "subnet1_id" {
  description = "The ID of Subnet 1"
  value       = azurerm_subnet.subnet1.id
}

output "subnet1_name" {
  description = "The name of Subnet 1"
  value       = azurerm_subnet.subnet1.name
}

output "subnet1_address_prefixes" {
  description = "The address prefixes of Subnet 1"
  value       = azurerm_subnet.subnet1.address_prefixes
}

# Output for Subnet 2
output "subnet2_id" {
  description = "The ID of Subnet 2"
  value       = azurerm_subnet.subnet2.id
}

output "subnet2_name" {
  description = "The name of Subnet 2"
  value       = azurerm_subnet.subnet2.name
}

output "subnet2_address_prefixes" {
  description = "The address prefixes of Subnet 2"
  value       = azurerm_subnet.subnet2.address_prefixes
}
