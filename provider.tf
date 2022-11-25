terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.32.0"
    }
  }

  backend "azurerm" {
        resource_group_name  = var.resourcegroup
        storage_account_name = var.storageaccname
        container_name       = var.storagecontainername
        key                  = var.storagekey
    }
}

provider "azurerm" {
  
   features {
     
   }
}