terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.78.0"
    }
  }
   backend "azurerm" {
    azurerm_resource_group = "rgchatty"
    storage_account_name   = "chattystorage8731"
    container_name         = "mycontainer"
    key                    = "ado.tfstate"
    use_azuread_auth       =  true
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}
