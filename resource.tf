#############################################################################
# RESOURCES
#############################################################################

resource "azurerm_resource_group" "k3s-resource-group" {
  name     = "k3s-resource-group"
  location = var.location
}