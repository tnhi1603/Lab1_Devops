resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "my_vpc"
    }
}

resource "aws_subnet" "privateSubnet" {
    vpc_id     = aws_vpc.main.id
    cidr_block = var.privateSubnet_cidr
    tags = {
        Name = "privateSubnet"
    }
}

resource "aws_subnet" "publicSubnet" {
    vpc_id     = aws_vpc.main.id
    cidr_block = var.publicSubnet_cidr
    tags = {
        Name = "publicSubnet"
    }
}

resource "aws_internet_gateway" "internetGateway" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "internetGateway"
  }
}
