resource "azurerm_log_analytics_workspace" "aks-law" {
  name                = "${var.prefix}-aks-law"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}