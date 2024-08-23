resource "azurerm_virtual_network" "vnet" {
  address_space       = local.address_space
  location            = local.location
  name                = "vnet-${var.prefix}-${var.subscription}-wus2"
  resource_group_name = azurerm_resource_group.rg.name

  tags = local.tags
}


# module "vnet" {
#   source  = "Azure/network/azurerm"
#   version = "6.3.0"

#   resource_group_name = azurerm_resource_group.rg.name
#   location            = azurerm_resource_group.rg.location
#   vnet_name           = "myVnet"
#   address_space       = ["10.0.0.0/16"]

#   subnet_prefixes = ["10.0.1.0/24", "10.0.2.0/24"]
#   subnet_names    = ["subnet1", "subnet2"]

#   subnet_service_endpoints = {
#     subnet1 = ["Microsoft.Storage"]
#     subnet2 = ["Microsoft.Sql"]
#   }

#   tags = {
#     environment = "Development"
#   }
# }
