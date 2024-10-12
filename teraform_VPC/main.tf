provider "aws" {
  region = var.region
}

module "network" {
  source         = "./modules/network"
  vpc_cidr = "172.16.0.0/16"
  publicSubnet_cidr = "172.16.1.0/24"
  privateSubnet_cidr = "172.16.2.0/24"
}