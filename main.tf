# script creates multiple RGs based on a given count using "count" structure

variable "vm_count" {
  type = number
  default = 3
}

resource "azurerm_resource_group" "server_rg" {
  count = var.vm_count
  name     = "RG-MC-${count.index}"
  location = "westeurope"
}
