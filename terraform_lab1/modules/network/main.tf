resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr_block
    tags = {
        Name = "my_vpc"
    }
}

resource "aws_subnet" "private_subnet" {
    vpc_id     = aws_vpc.main.id
    cidr_block = var.vpc_privateSubnet_cidr_block
    tags = {
        Name = "private_subnet"
    }
}

resource "aws_subnet" "public_subnet" {
    vpc_id     = aws_vpc.main.id
    cidr_block = var.vpc_publicSubnet_cidr_block
    tags = {
        Name = "public_subnet"
    }
}