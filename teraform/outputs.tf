<<<<<<< HEAD
output "public_instance_ip" {
  value = aws_instance.public_instance.public_ip
}

output "private_instance_id" {
  value = aws_instance.private_instance.id
=======
# Root-level output.tf

output "vpc_id" {
  description = "ID of the VPC from the network module"
  value       = module.network.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet from the network module"
  value       = module.network.publicSubnet_id
}

output "private_subnet_id" {
  description = "ID of the private subnet from the network module"
  value       = module.network.privateSubnet_id
}

output "internet_gateway_id" {
  description = "ID of the internet gateway from the network module"
  value       = module.network.internetGateway_id
}

# Output the Public Route Table ID from the module
output "public_routeTable_id" {
  description = "Public route table success deploy"
  value       = module.network.public_routeTable_id
}

# Output the Private Route Table ID from the module
output "private_routeTable_id" {
  description = "Private route table success deploy"
  value       = module.network.private_routeTable_id
}

# Output the Public Route Table Association ID from the module
output "public_routeTable_association_id" {
  description = "Public route table association success deploy"
  value       = module.network.public_routeTable_association_id
}

# Output the Private Route Table Association ID from the module
output "private_routeTable_association_id" {
  description = "Private route table association success deploy"
  value       = module.network.private_routeTable_association_id
}

# Output the NAT Gateway ID from the module
output "natGateway_id" {
  description = "NAT Gateway success deploy"
  value       = module.network.natGateway_id
}

# Output the Elastic IP ID for NAT Gateway from the module
output "nat_eip_id" {
  description = "NAT Gateway Elastic IP success deploy"
  value       = module.network.nat_eip_id
>>>>>>> 987198f02180d8b1fa1c44e03ad0dbd09fe04d96
}
