provider "azurerm" {
  features {}
}

# Tham chiếu tới Resource Group đã tạo
data "azurerm_resource_group" "example" {
  name = "MyCloudDemoGroup"
}

# Khai báo cấu hình AKS
resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = "doan-aks-cluster"
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
  dns_prefix          = "doanaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }
}