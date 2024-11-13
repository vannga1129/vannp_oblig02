terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.9.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "rgtf-oblig2"
  #   storage_account_name = "sabetfsxv1d0"
  #   container_name       = "tfstate"
  #   key                  = "oblig2.terraform.tfstate"
  # }
}

provider "azurerm" {
  subscription_id = "30ee9279-e76e-409d-8973-00c9792f6bcb" # set the subscription ID to use
  features {
  }
}
