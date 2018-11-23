provider "azurerm" {}
terraform {
  backend "azurerm" {
    storage_account_name = "sssddev"
    container_name       = "prodterraformtfstate"
    resource_group_name  = "sssd-dev"
    key = "prod.tfstate"
  }
}
