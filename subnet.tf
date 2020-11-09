#############################################################################
# SUBNET
#############################################################################

resource "azurerm_subnet" "k3s-subnet" {
  name                 = "k3s-subnet"
  resource_group_name  = azurerm_resource_group.k3s-resource-group.name
  virtual_network_name = azurerm_virtual_network.k3s-virtual-network.name
  address_prefixes       = ["10.0.1.0/24"]
}