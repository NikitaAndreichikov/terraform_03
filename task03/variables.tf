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

variable "subnet_names" {
  description = "List of subnet names to create"
  type        = list(string)
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "Map of subnet names to their address prefixes"
  type        = map(string)
}
