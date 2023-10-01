# Creates a container registry on Azure so that you can publish your Docker images.

resource "azurerm_container_registry" "vickokextube-acr" {
  name                = var.app_name
  resource_group_name = azurerm_resource_group.vickokextube-rg.name
  location            = azurerm_resource_group.vickokextube-rg.location
  sku                 = "Premium"
  admin_enabled       = true
}

# resource "azurerm_container_registry" "vickokextube-acr" {
#   name                = "vickokextube"
#   resource_group_name = azurerm_resource_group.vickokextube-rg.name
#   location            = azurerm_resource_group.vickokextube-rg.location
#   sku                 = "Premium"
# }

output "registry_hostname" {
  value = azurerm_container_registry.vickokextube-acr.login_server
}

output "registry_un" {
  value = azurerm_container_registry.vickokextube-acr.admin_username
}

output "registry_pw" {
  value =   azurerm_container_registry.vickokextube-acr.admin_password
}
