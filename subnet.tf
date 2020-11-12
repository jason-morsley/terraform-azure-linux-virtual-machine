#############################################################################
# SUBNET
#############################################################################

resource "azurerm_subnet" "vm-subnet" {
  name                 = "vm-subnet"
  resource_group_name  = azurerm_resource_group.vm-resource-group.name
  virtual_network_name = azurerm_virtual_network.vm-virtual-network.name
  address_prefixes       = ["10.0.1.0/24"]
}