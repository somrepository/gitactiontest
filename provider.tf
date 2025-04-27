terraform {

  backend "azurerm" {
    subscription_id      = "2178b722-5baa-4418-8bc9-3fcb9cd14fed"
    resource_group_name  = "gitaction_str"
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
  subscription_id = "2178b722-5baa-4418-8bc9-3fcb9cd14fed"

}