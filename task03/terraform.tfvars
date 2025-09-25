# Terraform variable values
location             = "East US"
resource_group_name  = "cmaz-6nj0d7cf-mod3-rg"
storage_account_name = "cmaz6nj0d7cfsa"
vnet_name            = "cmaz-6nj0d7cf-mod3-vnet"
creator_email        = "mikita_andreichykau@epam.com"
subnet_names         = ["frontend", "backend"]
vnet_address_space   = ["10.0.0.0/16"]
subnet_address_prefixes = {
  frontend = "10.0.1.0/24"
  backend  = "10.0.2.0/24"
}