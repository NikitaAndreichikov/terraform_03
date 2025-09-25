# Terraform version constraints and required providers
# Best practice: Use specific version ranges to ensure compatibility and predictable behavior

terraform {
  # Require Terraform version 1.5.7 or higher for stable features
  required_version = ">= 1.5.7"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # Use version constraint to allow versions >= 3.110.0 but prevent 4.x.x breaking changes
      version = ">= 3.110.0, < 4.0.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

# Configure the Azure Provider
# Note: Provider configuration should typically be in the root module, not in child modules
provider "azurerm" {
  features {
    # Enable/disable specific Azure provider features
    resource_group {
      prevent_deletion_if_contains_resources = false
    }

    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    virtual_machine {
      delete_os_disk_on_deletion     = true
      skip_shutdown_and_force_delete = false
    }
  }
}