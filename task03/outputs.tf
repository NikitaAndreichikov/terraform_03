# Output values from your Terraform configuration
# These values will be displayed after terraform apply

output "resource_group_id" {
  description = "The ID of the Azure Resource Group"
  value       = azurerm_resource_group.main.id
}

output "resource_group_name" {
  description = "The name of the Azure Resource Group"
  value       = azurerm_resource_group.main.name
}

output "resource_group_location" {
  description = "The location of the Azure Resource Group"
  value       = azurerm_resource_group.main.location
}

output "storage_account_id" {
  description = "The ID of the Azure Storage Account"
  value       = azurerm_storage_account.main.id
}

output "storage_account_name" {
  description = "The name of the Azure Storage Account"
  value       = azurerm_storage_account.main.name
}

output "storage_account_primary_blob_endpoint" {
  description = "The primary blob endpoint URL of the Azure Storage Account"
  value       = azurerm_storage_account.main.primary_blob_endpoint
}

output "virtual_network_id" {
  description = "The ID of the Azure Virtual Network"
  value       = azurerm_virtual_network.main.id
}

output "virtual_network_name" {
  description = "The name of the Azure Virtual Network"
  value       = azurerm_virtual_network.main.name
}

output "virtual_network_address_space" {
  description = "The address space of the Azure Virtual Network"
  value       = azurerm_virtual_network.main.address_space
}

output "subnet_ids" {
  description = "Map of subnet names to their IDs"
  value       = { for k, v in azurerm_subnet.subnets : k => v.id }
}

output "subnet_names" {
  description = "List of all subnet names created"
  value       = [for subnet in azurerm_subnet.subnets : subnet.name]
}

output "subnet_address_prefixes" {
  description = "Map of subnet names to their address prefixes"
  value       = { for k, v in azurerm_subnet.subnets : k => v.address_prefixes }
}
