resource "azurerm_resource_group" "prod_rg" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    environment = "${var.prefix}-environment"
  }
}

data "azurerm_client_config" "current" {
    
}

module "network" {
  source = "./modules/network"
  prefix               = var.prefix
  resource_group_name  = var.resource_group_name
  location             = var.location

  nsg_rules = {
    rule1 = {
      name                       = "Allow-SSH"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    },
    rule2 = {
      name                       = "Deny-All"
      priority                   = 200
      direction                  = "Inbound"
      access                     = "Deny"
      protocol                   = "*"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}

module "log_analytics" {
    source = "./modules/log_analytics"
    prefix               = var.prefix
    resource_group_name  = var.resource_group_name
    location             = var.location
  
}

#module "keyvault" {
#    source = "./modules/keyvault"
#    prefix               = var.prefix
#    resource_group_name  = var.resource_group_name
#    location             = var.location
#    tenant_id = data.azurerm_client_config.current.tenant_id 
#}

module "acr" {
  source = "./modules/acr"
  prefix               = var.prefix
  resource_group_name  = var.resource_group_name
  location             = var.location
}

module "aks" {
  source = "./modules/aks"
  prefix               = var.prefix
  resource_group_name  = var.resource_group_name
  location             = var.location
  subnet_id                 = module.network.subnet_id
  log_analytics_workspace_id = module.log_analytics.law_id
}
