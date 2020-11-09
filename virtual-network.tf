#############################################################################
# VIRTUAL NETWORK
#############################################################################

resource "azurerm_virtual_network" "k3s-virtual-network" {
  name                = "rancher"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.k3s-resource-group.name
}