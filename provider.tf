provider "azurerm" {
  use_oidc        = true
  tenant_id       = "21d8e422-7fd3-4634-8c8a-01dfde9a5502" # veradigm tanant ID
  subscription_id = "dc79b1ca-cbfb-4c99-b9d6-5ddf93a869aa" # Zingana Subscription
  client_id       = "3408abaf-3cca-4424-b0ab-95f07cea50fe" # Ue1ZgeCHcQAechc-tf01
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "Ue1ZgeCHCQATerraformRG"
    storage_account_name = "ue1zgechcqatfstoracc"
    container_name       = "echc-tfstate"
    key                  = "echcqa.terraform.tfstate"
    use_oidc             = true
    tenant_id            = "21d8e422-7fd3-4634-8c8a-01dfde9a5502" # Veradigm tanant ID
    subscription_id      = "dc79b1ca-cbfb-4c99-b9d6-5ddf93a869aa" # Zingana Subscription
    client_id            = "3408abaf-3cca-4424-b0ab-95f07cea50fe" # Ue1ZgeCHcQAechc-tf01
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
