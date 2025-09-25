# Terraform variable values
location             = "East US"
resource_group_name  = "cmaz-6nj0d7cf-mod3-rg"
storage_account_name = "cmaz6nj0d7cfsa"
vnet_name            = "cmaz-6nj0d7cf-mod3-vnet"
creator_email        = "mikita_andreichykau@epam.com"
# COMMENTED OUT - variables used with for_each
# subnet_names         = ["frontend", "backend"]
# subnet_address_prefixes = {
#   frontend = "10.0.1.0/24"
#   backend  = "10.0.2.0/24"
# }

vnet_address_space   = ["10.0.0.0/16"]

# Simple string values for individual subnet resources
frontend_subnet_name            = "frontend"
frontend_subnet_address_prefix  = "10.0.1.0/24"
backend_subnet_name             = "backend"
backend_subnet_address_prefix   = "10.0.2.0/24"