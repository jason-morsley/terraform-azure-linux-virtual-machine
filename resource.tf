#############################################################################
# RESOURCES
#############################################################################

resource "azurerm_resource_group" "vm-resource-group" {
  name     = "vm-resource-group"
  location = var.location
}