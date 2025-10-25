output "resoucegroup_id" {
  description = "The name of the Resource Group"
  value       = azurerm_resource_group.prod_rg.id
  
}

output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = module.network.vnet_id
  
}

output "subnet_id" {
  description = "The ID of the AKS Subnet"
  value       = module.network.subnet_id
  
}

output "nsg_id" {
  description = "The ID of the Network Security Group"
  value       = module.network.nsg_id
  
}

output "law_id" {
  description = "The ID of the Log Analytics Workspace"
  value       = module.log_analytics.law_id
  
}

