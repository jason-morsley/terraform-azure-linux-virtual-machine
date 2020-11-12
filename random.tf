#############################################################################
# RESOURCES
#############################################################################
resource "random_id" "random-id" {
  keepers = {
    resource_group = azurerm_resource_group.vm-resource-group.name
  }

  byte_length = 8
}