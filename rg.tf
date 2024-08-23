resource "azurerm_resource_group" "rg" {
  name     = "rg-${prefix}-${var.subscription}-wus2-001"
  location = local.location
}
