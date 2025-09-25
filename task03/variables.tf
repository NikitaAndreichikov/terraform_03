# Variable definitions for Terraform configuration

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
}

variable "creator_email" {
  description = "Email of the creator for resource tagging"
  type        = string
}

# COMMENTED OUT - variables used with for_each
# variable "subnet_names" {
#   description = "List of subnet names to create"
#   type        = list(string)
# }
#
# variable "subnet_address_prefixes" {
#   description = "Map of subnet names to their address prefixes"
#   type        = map(string)
# }

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

# Simple string variables for individual subnet resources
variable "frontend_subnet_name" {
  description = "Name of the frontend subnet"
  type        = string
}

variable "frontend_subnet_address_prefix" {
  description = "Address prefix for the frontend subnet"
  type        = string
}

variable "backend_subnet_name" {
  description = "Name of the backend subnet"
  type        = string
}

variable "backend_subnet_address_prefix" {
  description = "Address prefix for the backend subnet"
  type        = string
}
