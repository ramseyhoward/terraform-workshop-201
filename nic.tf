resource "azurerm_network_interface" "nic" {
  name                = "nic-${var.prefix}-${var.subscription}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
    name                          = "ip-${var.prefix}[${var.subscription}]"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.public_ip.id
  }
}