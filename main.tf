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
  subscription_id = "4b17b325-659f-4d55-a1dd-05924472aff7"
  client_id = "92fc1e6d-0ce9-419b-8840-185c9a73257b"
  client_secret = "FGX8Q~NzFWYUgIdR~vYR2B5wwUFAL8diqTha3bzK"
  tenant_id = "d93f82c0-b3a5-4166-a867-dde02323e4aa"
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
