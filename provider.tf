terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.21.1"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "2.28.1"
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.2"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg555"
    storage_account_name = "sumitstorage00"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    }
}

provider "azurerm" {
  # Configuration options
  features { 
  }
}

provider "random" {
  # Configuration options
}

provider "azuread" {
  # Configuration options
}






