variable "vpc_cidr_block" {
  type        = string
  default     = "172.16.0.0/16"
  description = "vpc_cidr_block for VPC"
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "region for aws"
}
