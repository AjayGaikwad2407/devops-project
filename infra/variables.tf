variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default = "prod-rg"
  
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default = "eastus"
  
}

variable "prefix" {
  description = "Prefix for naming resources"
  type        = string
  default = "prod" 
}


