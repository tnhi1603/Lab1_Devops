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

resource "aws_internet_gateway" "vpc_internetGateway" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "vpc_internetGateway"
  }
}

resource "aws_route_table" "public_routeTable" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_internetGateway.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id = aws_internet_gateway.vpc_internetGateway.id
  }

  tags = {
    Name = "public_routeTable"
  }
}

resource "aws_route_table_association" "association_public" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_routeTable.id
}

resource "aws_eip" "nat_eip" {
    vpc = true
}
resource "aws_nat_gateway" "natGateway"{
    allocation_id = aws_eip.nat_eip.id 
    subnet_id= aws_subnet.public_subnet.id
    tags = {
        Name = "NAT"
    }
}

# define private subnet will all go to nat gateway
resource "aws_route_table" "private_routeTable" {
    vpc_id = aws_vpc.main.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.natGateway.id
    }    
    tags = {
        Name = "private_routeTable"
    }

}

resource "aws_route_table_association" "association_private" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private_routeTable.id
}