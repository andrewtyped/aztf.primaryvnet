terraform {
  required_version = ">= 1.6.6"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 3.106"
    }
    azuread = {
        source = "hashicorp/azuread"
        version = "~> 2.50"
    }
  }
}