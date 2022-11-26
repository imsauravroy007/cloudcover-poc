resource "random_id" "workspace" {
  keepers = {
    # Generate a new id each time we switch to a new resource group
    group_name = azurerm_resource_group.rg-aksdemo.name
  }

  byte_length = 8
}

resource "azurerm_log_analytics_workspace" "example" {
  name                = "k8s-workspace-${random_id.workspace.hex}"
  location            = azurerm_resource_group.rg-aksdemo.location
  resource_group_name = azurerm_resource_group.rg-aksdemo.name
  sku                 = "PerGB2018"
}

resource "azurerm_log_analytics_solution" "example" {
  solution_name         = "ContainerInsights"
  location              = azurerm_resource_group.rg-aksdemo.location
  resource_group_name   = azurerm_resource_group.rg-aksdemo.name
  workspace_resource_id = azurerm_log_analytics_workspace.example.id
  workspace_name        = azurerm_log_analytics_workspace.example.name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/ContainerInsights"
  }
}