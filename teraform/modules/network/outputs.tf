# Output the VPC ID
output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

# Output the Public Subnet ID
output "publicSubnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.publicSubnet.id
}

output "privateSubnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.privateSubnet.id
}

output internetGateway_id {
  value       = aws_internet_gateway.internetGateway.id
  description = "Internet gateway ID"
}

# Output the Public Route Table ID
output "public_routeTable_id" {
  description = "Public route table success deploy"
  value       = aws_route_table.public_routeTable.id
}

# Output the Private Route Table ID
output "private_routeTable_id" {
  description = "Private route table success deploy"
  value       = aws_route_table.private_routeTable.id
}

# Output the Public Route Table Association ID
output "public_routeTable_association_id" {
  description = "Public route table association success deploy"
  value       = aws_route_table_association.associate_publicSubnet.id
}

# Output the Private Route Table Association ID
output "private_routeTable_association_id" {
  description = "Private route table association success deploy"
  value       = aws_route_table_association.associate_privateSubnet.id
}

# Output the NAT Gateway ID
output "natGateway_id" {
  description = "NAT Gateway success deploy"
  value       = aws_nat_gateway.natGateway.id
}

# Output the Elastic IP ID for NAT Gateway
output "nat_eip_id" {
  description = "NAT Gateway Elastic IP success deploy"
  value       = aws_eip.nat_eip.id
}
