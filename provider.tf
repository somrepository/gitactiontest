terraform {

  backend "azurerm" {

    resource_group_name  = "data_rg"
    storage_account_name = "masterstoragegithub" # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "gitbackup"           # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "testgithub.tfstate"  # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }


}



provider "azurerm" {
  features {}


}

resource "azurerm_resource_group" "rg_namec" {
  count    = 3
  name     = "jkl3${count.index}"
  location = "East US"

}

