terraform {
  backend "azurerm" {
    resource_group_name  = "MyCloudDemoGroup"
    storage_account_name = "tfsstatect987"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}