variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "publicSubnet_cidr" {
  type        = string
  description = "publicSubnet_cidr"
}

variable "privateSubnet_cidr" {
  type        = string
  description = "privateSubnet_cidr"
}