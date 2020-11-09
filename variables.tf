#############################################################################
# VARIABLES
#############################################################################

variable "location" {
  type = string
  default = "uksouth" # London
}

resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits = 4096
}