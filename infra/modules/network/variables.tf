variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string 
}

variable "prefix" {
  description = "Prefix for naming resources"
  type        = string
  
}

variable "nsg_rules" {
  description = "List of NSG rules"
  type        = map(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))  
}