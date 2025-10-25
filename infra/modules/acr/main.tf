resource "azurerm_container_registry" "aks-acr" {
    name                = "${var.prefix}aksacr"
    location            = var.location
    resource_group_name = var.resource_group_name
    sku                 = "Standard"
    admin_enabled       = false
}