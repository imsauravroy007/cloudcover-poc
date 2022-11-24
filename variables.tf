variable "resourcegroup" {

    type = string
    default = "rg-demoaks"
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

