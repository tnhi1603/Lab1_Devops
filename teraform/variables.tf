variable "region" {
  description = "The AWS region to create the VPC in"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "allowed_ssh_ip" {
  description = "The IP address allowed to SSH into the public instance"
  default     = "192.168.1.7/32"  # Thay thế bằng địa chỉ IP của bạn
}