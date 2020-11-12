#############################################################################
# KEY OUTPUTS
#############################################################################

output "tls_private_key" {
  value = tls_private_key.ssh_key.private_key_pem
}

//output "key_pair" {
//  value = azure_key_pair.this
//}

//output "key_name" {
//  value = azure_key_pair.this.key_name
//}

output "public_key" {
  value = tls_private_key.ssh_key.public_key_openssh
}

output "private_key" {
  value = tls_private_key.ssh_key.private_key_pem
}

output "ssh_command" {
  value = "chmod 400 keys/${var.name}* && ssh -i \"keys/${var.name}.pem\" ubuntu@${azurerm_linux_virtual_machine.vm.public_ip_address}"
}

#############################################################################
# OUTPUTS
#############################################################################

output "id" {
  value = azurerm_linux_virtual_machine.vm.id
}

output "public_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}


output "private_ip" {
  value = azurerm_linux_virtual_machine.vm.private_ip_address
}

output "encoded_public_key" {
  value = base64encode(tls_private_key.ssh_key.public_key_pem)
}

output "encoded_private_key" {
  value = base64encode(tls_private_key.ssh_key.private_key_pem)
}

