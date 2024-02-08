provider "azurerm" {
  use_oidc        = true
  tenant_id       = "2d323e4c-4e41-4e45-9713-2bffb7c4c541"
  subscription_id = "15525204-448b-4828-998e-370e02b3d64f"
  client_id       = "5f62cc0c-1eae-492b-9030-ed864e30f2bf" 
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "MC"
    storage_account_name = "mctf"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
    tenant_id            = "2d323e4c-4e41-4e45-9713-2bffb7c4c541"
    subscription_id      = "15525204-448b-4828-998e-370e02b3d64f"
    client_id            = "5f62cc0c-1eae-492b-9030-ed864e30f2bf" 
  }
}

terraform {
  required_providers {
    azurerm = {
      version = ">= 3.79.0, < 4.0.0"
      source  = "hashicorp/azurerm"
    }
  }
}
