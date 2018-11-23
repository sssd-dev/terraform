provider "azurerm" {}
terraform {
  backend "azurerm" {
    storage_account_name = "sssddev"
    container_name       = "prodterraformtfstate"
    resource_group_name  = "sssd-dev"
    key = "prod.tfstate"
    access_key = "aIT6VlpNjYFv+JkdV/HhZSYrElyLpvQe8j5a66NIH8oRfGWt8wDKFfSF38gftEAROlm7+7SevdI3MLiQGWdPrg=="
  }
}
