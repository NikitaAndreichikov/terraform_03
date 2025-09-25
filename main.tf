# Main Terraform configuration file
# Define your infrastructure resources here

# Resource Group
resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Creator = "mikita_andreichykau@epam.com"
  }
}

# Storage Account
resource "azurerm_storage_account" "main" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Creator = "mikita_andreichykau@epam.com"
  }
}

# Virtual Network
resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  tags = {
    Creator = "mikita_andreichykau@epam.com"
  }
}

# Frontend Subnet
resource "azurerm_subnet" "frontend" {
  name                 = "frontend"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Backend Subnet
resource "azurerm_subnet" "backend" {
  name                 = "backend"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}
