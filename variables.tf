# Variable definitions for Terraform configuration

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "cmaz-6nj0d7cf-mod3-rg"
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
  default     = "cmaz6nj0d7cfsa"
}

variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
  default     = "cmaz-6nj0d7cf-mod3-vnet"
}
