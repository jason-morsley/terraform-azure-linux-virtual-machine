#############################################################################
# SECURITY GROUP
#############################################################################
resource "azurerm_network_security_group" "nsg" {
  name                = "nsg"
  location            = var.location
  resource_group_name = azurerm_resource_group.vm-resource-group.name

  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_interface_security_group_association" "nisga" {
  network_interface_id      = azurerm_network_interface.nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

resource "azurerm_public_ip" "vm-public-ip" {
  name                         = "vm-public-ip"
  location                     = var.location
  resource_group_name          = azurerm_resource_group.vm-resource-group.name
  allocation_method            = "Dynamic"
}