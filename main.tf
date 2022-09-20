locals {
  rgname = "rg11"
  env    =  "prod"
  owner  = "abhishek"
  rgname1 = "rg556"
}

resource "azurerm_resource_group" "rg11" {
    name = local.rgname1
    location = "eastus"
    tags     = {
    "env" = "prod"
    }
}


resource "azuread_user" "example" {
  user_principal_name = "sumit@jksahanilive.onmicrosoft.com"
  display_name        = "sumit"
  mail_nickname       = "sumit"
  password            = "SecretP@sswd99!"
}


variable "rgname" {
  default = "rg-demo"
}


resource "random_string" "random" {
  upper = false
  length  = 12
  special = false
  numeric = true
}

resource "azurerm_storage_account" "storage" {
  name = random_string.random.result
  location = azurerm_resource_group.rg11.location
  resource_group_name = azurerm_resource_group.rg11.name
  account_tier = "Standard"
  account_replication_type = "LRS"
}


