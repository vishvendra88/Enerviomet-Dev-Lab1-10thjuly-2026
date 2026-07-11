terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }


  }

  backend "azurerm" {
    resource_group_name  = "rg-backend-block"
    storage_account_name = "backendstate151988"
    container_name       = "statefile"
    key                  = "terraform.statefile"

  }


}

provider "azurerm" {
  features {}
}
