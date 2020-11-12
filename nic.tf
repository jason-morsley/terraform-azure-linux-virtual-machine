#############################################################################
# NETWORK INTERFACE CONTROLLER
#############################################################################
resource "azurerm_network_interface" "nic" {
  name                      = "nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.vm-resource-group.name

  ip_configuration {
    name                          = "nic-config"
    subnet_id                     = azurerm_subnet.vm-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vm-public-ip.id
  }
}