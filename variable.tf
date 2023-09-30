variable "aws_region" {
  description = "AWS region for resources"
  default     = "eu-north-1"
}

variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0703b5d7f7da98d1e"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of your EC2 key pair"
  default     = "My-Ghost-Key-Pair"
}
