# script creates multiple RGs based on a given count using "count" structure
terraform {
  backend "local" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.7.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  use_oidc = true
  features {}
}

variable "vm_count" {
  type = number
  default = 3
}

resource "azurerm_resource_group" "server_rg" {
  count = var.vm_count
  name     = "RG-MC-${count.index}"
  location = "westeurope"
}
