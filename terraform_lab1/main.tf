provider "aws" {
  region = var.region
}

module "my_vpc" {
  source         = "./modules/VPC"
  vpc_cidr_block = "172.16.0.0/16"
  publicSubnet_cidr_block = "172.16.1.0/24"
  privateSubnet_cidr_block = "172.16.2.0/24"
}