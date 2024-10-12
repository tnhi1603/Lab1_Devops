variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "publicSubnet_cidr_block" {
  type        = string
  description = "publicSubnet_cidr_block"
}

variable "privateSubnet_cidr_block" {
  type        = string
  description = "privateSubnet_cidr_block"
}