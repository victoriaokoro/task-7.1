# Creates a resource group for FlixTube in your Azure account.

resource "azurerm_resource_group" "vickokextube-rg" {
  name     = var.resource_name
  location = var.location
}
