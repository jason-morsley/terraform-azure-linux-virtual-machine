#############################################################################
# VARIABLES
#############################################################################

variable "location" {
  type = string
  default = "uksouth" # London
}

variable "name" {
  type = string
  default = "k3s-vm"
}

variable "local-folder-name" {
  type = string
  default = "keys"
}