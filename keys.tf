#############################################################################
# KEYS
#############################################################################

resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits = 4096
}

//resource "azure_key_pair" "this" {
//  key_name   = var.name
//  public_key = tls_private_key.ssh_key.public_key_openssh
//}

resource "local_file" "public-key" {
  filename = "${var.local-folder-name}/${var.name}.pub"
  content  = tls_private_key.ssh_key.public_key_openssh
}

resource "local_file" "private-key" {
  filename = "${var.local-folder-name}/${var.name}.pem"
  content  = tls_private_key.ssh_key.private_key_pem
}