# Main Terraform configuration file
# Define your infrastructure resources here

# Local values for dynamic resource generation and consistent tagging
locals {
  common_tags = {
    Creator = var.creator_email
  }

  # Generate resource names dynamically using locals
  resource_names = {
    resource_group  = var.resource_group_name
    storage_account = var.storage_account_name
    virtual_network = var.vnet_name
  }
}

# Resource Group
resource "azurerm_resource_group" "main" {
  name     = local.resource_names.resource_group
  location = var.location

  tags = local.common_tags
}

# Storage Account
resource "azurerm_storage_account" "main" {
  name                     = local.resource_names.storage_account
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.common_tags
}

# Virtual Network
resource "azurerm_virtual_network" "main" {
  name                = local.resource_names.virtual_network
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  tags = local.common_tags
}

# Subnets - dynamically created using for_each
resource "azurerm_subnet" "subnets" {
  for_each = toset(var.subnet_names)

  name                 = each.value
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [var.subnet_address_prefixes[each.value]]
}
