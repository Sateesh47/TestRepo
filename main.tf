terraform {
  required_providers {
    azurerm ={
        source = "hashicorp/azurerm"
        version = "4.53.0"
    }
  }
}

provider "azurerm" {
  features {}
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
