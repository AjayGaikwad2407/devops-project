resource "azurerm_resource_group" "prod_rg" {
  name     = var.resource_group_name
  location = var.location
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    environment = "${var.prefix}-environment"
  }
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