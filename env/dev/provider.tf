terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.33.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "dev-hulk-rg"
    storage_account_name = "marvelstatefile01"     # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "statefile-container"   # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }

}

provider "azurerm" {
  features {}
  subscription_id = "224ca6aa-8178-4cd2-bcee-797840d267cf"
}