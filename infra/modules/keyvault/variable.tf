
variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}

variable "prefix" {
    description = "Prefix for naming resources"
    type        = string
}

variable "tenant_id" {
    description = "The Tenant ID for the Azure Key Vault"
    type        = string
}
