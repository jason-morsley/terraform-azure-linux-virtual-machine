#############################################################################
# STORAGE
#############################################################################

//resource "azurerm_storage_account" "k3s-storage-account" {
//  name                        = "diag${random_id.random-id.hex}"
//  resource_group_name         = azurerm_resource_group.k3s-resource-group.name
//  location                    = var.location
//  account_tier                = "Standard"
//  account_replication_type    = "LRS"
//}