resource "aws_eip" "nat_eip" {
    vpc = true
}
resource "aws_nat_gateway" "natGateway"{
    allocation_id = aws_eip.nat_eip.id 
    subnet_id= aws_subnet.publicSubnet.id
    tags = {
        Name = "NAT"
    }
}