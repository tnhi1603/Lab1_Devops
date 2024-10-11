provider "aws" {
  region = var.region
}

module "my_vpc" {
  source         = "./modules/VPC"
  vpc_cidr_block = var.vpc_cidr_block
}