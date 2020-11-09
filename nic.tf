#############################################################################
# NETWORK INTERFACE CONTROLLER
#############################################################################
resource "azurerm_network_interface" "k3s-nic" {
  name                      = "k3s-nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.k3s-resource-group.name

  ip_configuration {
    name                          = "k3s-nic-config"
    subnet_id                     = azurerm_subnet.k3s-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.k3s-public-ip.id
  }
}