terraform {
  required_providers {
    azurerm = {
      source ="hashicorp/azurerm" 
      version ="3.27.0"
    }
  }
   
}
provider "azurerm" {
    features {
      
    }
  subscription_id = "5e1cb9c2-fd93-41ad-afda-c5ca425c70e7"
  client_id = "5aff3f8c-6bc9-44e8-8c23-0d2bb3648628"
  client_secret = "-1x8Q~RdRfHQVgBDLW6QfsVz8h4W8t9yC8iQjbYS"
  tenant_id = "986346f7-3c6e-48ab-b041-e6365a1bc3bd"
}
resource "azurerm_resource_group" "tfdevrglabel1" {
    name = "tfdevrg"  
    location = "West US"
}
resource "azurerm_virtual_network" "devvnetlabel1" {
  name ="devvnet"  
  location = azurerm_resource_group.tfdevrglabel1.location
  resource_group_name = azurerm_resource_group.tfdevrglabel1.name
  address_space = [ "10.50.0.0/16" ]
  tags = {
    "name" = "devvnet"
  }
}