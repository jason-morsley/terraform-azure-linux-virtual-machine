#############################################################################
# VIRTUAL MACHINE
#############################################################################

resource "azurerm_linux_virtual_machine" "k3s-vm" {
  name                  = var.name
  location              = var.location
  resource_group_name   = azurerm_resource_group.k3s-resource-group.name
  network_interface_ids = [azurerm_network_interface.k3s-nic.id]
  size                  = "Standard_DS1_v2" # Unsure if this is powerful enough.

  os_disk {
    name              = "k3sOsDisk"
    caching           = "ReadWrite"
    storage_account_type = "Premium_LRS" # SSD storage
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  computer_name  = "k3s-vm"
  admin_username = "ubuntu"
  disable_password_authentication = true

  admin_ssh_key {
    username       = "ubuntu"
    public_key     = tls_private_key.ssh_key.public_key_openssh
  }

//  boot_diagnostics {
//    storage_account_uri = azurerm_storage_account.k3s-storage-account.primary_blob_endpoint
//  }
}