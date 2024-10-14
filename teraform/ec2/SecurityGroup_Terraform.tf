# Define the provider
provider "aws" {
  region = "us-east-1"  # Thay thế bằng vùng của bạn
}

# Public Security Group (cho phép SSH từ một IP cụ thể)
resource "aws_security_group" "public_ec2_sg" {
  name        = "public-ec2-sg"
  description = "Allow SSH from specific IP"
  vpc_id      = aws_vpc.my_vpc.id  # Thay thế bằng VPC của bạn

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.29/32"]  # Thay thế x.x.x.x bằng IP của bạn
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "public-ec2-sg"
  }
}

# Private Security Group (cho phép kết nối SSH từ Public EC2 Instance)
resource "aws_security_group" "private_ec2_sg" {
  name        = "private-ec2-sg"
  description = "Allow SSH from public EC2 instance"
  vpc_id      = aws_vpc.my_vpc.id  # Thay thế bằng VPC của bạn

  ingress {
    description              = "Allow SSH from public instance"
    from_port                = 22
    to_port                  = 22
    protocol                 = "tcp"
    security_groups          = [aws_security_group.public_ec2_sg.id]  # Chỉ cho phép từ Public SG
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "private-ec2-sg"
  }
}

# VPC (thêm vào để liên kết các SGs)
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "MyVPC"
  }
}
