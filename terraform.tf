# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.91.0"   

      configuration_aliases = [
        azurerm.connectivity
        ,azurerm.management
    ]   
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
}

provider "azurerm" {
    features {}
    alias           = "connectivity"
    subscription_id = var.subscription_id_connectivity
}

provider "azurerm" {
    features {}
    alias           = "management"
    subscription_id = var.subscription_id_management
}

provider "azurerm" {
    features {}
    alias           = "identity"
    subscription_id = var.subscription_id_identity
}