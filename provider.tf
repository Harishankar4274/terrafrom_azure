terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.68.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "82ebfd06-68ad-41f9-baec-af5d2d190425"
  client_id       = "39347f10-a49f-4d0d-acc1-a181a510db84"
  client_secret   = "u4W8Q~0l02gGoqFNrPhP-VX1zz7ZDlqCRgqy2b3P"    
  tenant_id       = "70240967-bc47-4bee-b0e0-4f2b51cc08bd"  
}