variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_publicSubnet_cidr_block" {
  type        = string
  description = "vpc_publicSubnet_cidr_block"
}

variable "vpc_privateSubnet_cidr_block" {
  type        = string
  description = "vpc_privateSubnet_cidr_block"
}