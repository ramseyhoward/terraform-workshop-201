# resource "azurerm_subnet" "subnet" {
#   for_each = local.subnets
#   address_prefixes                              = each.value.address_prefixes
#   name                                          = "snet-connectivity-prod-wus2-${each.value.name}"
#   resource_group_name                           = azurerm_resource_group.rg.name
#   virtual_network_name                          = azurerm_virtual_network.vnet.name

resource "azurerm_subnet" "subnet" {
  address_prefixes     = local.subnet_cidrs
  name                 = "snet-${var.prefix}-${var.subscription}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
}
