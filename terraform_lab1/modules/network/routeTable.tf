resource "aws_route_table" "public_routeTable" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internetGateway.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id = aws_internet_gateway.internetGateway.id
  }

  tags = {
    Name = "public_routeTable"
  }
}

resource "aws_route_table_association" "associate_publicSubnet" {
  subnet_id      = aws_subnet.publicSubnet.id
  route_table_id = aws_route_table.public_routeTable.id
}


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

resource "aws_route_table_association" "associate_privateSubnet" {
  subnet_id      = aws_subnet.privateSubnet.id
  route_table_id = aws_route_table.private_routeTable.id
}