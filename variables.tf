#############################################################################
# VARIABLES
#############################################################################

variable "location" {
  type = string
  default = "uksouth" # London
}

variable "name" {
  type = string
  default = "standard-vm"
}

variable "local-folder-name" {
  type = string
  default = "keys"
}