provider "aws" {
  region = "eu-north-1"  # Change to your desired AWS region
}

resource "aws_instance" "ghost_instance" {
  ami           = "ami-0703b5d7f7da98d1e"  # Specify the desired AMI ID
  instance_type = "t3.micro"  # Adjust instance type as needed
  key_name      = "My-Ghost-Key-Pair"  # Specify your key pair name

  tags = {
    Name = "MyGhostInstance"
  }
}

output "instance_ip" {
  value = aws_instance.ghost_instance.public_ip
}
