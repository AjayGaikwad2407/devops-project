output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.vnet.id
  
}

output "subnet_id" {
  description = "The ID of the AKS Subnet"
  value       = azurerm_subnet.aks-subnet.id
  
}

output "nsg_id" {
  description = "The ID of the Network Security Group"
  value       = azurerm_network_security_group.aks-nsg.id
  
}