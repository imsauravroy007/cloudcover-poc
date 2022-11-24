variable "resourcegroup" {

    type = string
    default = azurerm_resource_group.rg-aksdemo.name
}

variable "storageaccname" {
   type=string
   default = "cloudcoverstorage"
}

variable "storagecontainername" {
   type=string
   default = "terraformcontainer"
}

variable "storagekey" {
   type=string
   default = "terraform.tfstate"
}

