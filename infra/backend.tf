terraform {
  backend "azurerm" {
        resource_group_name = "tfstate-rg"
        storage_account_name = "kridhatfstatestorge"
        key = "${var.prefix}.terraform.tfstate"
        container_name = "devops-project-tfstate"
  }
}