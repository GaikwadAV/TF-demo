# provider "aws" {
#   region = "ap-south-1"
# }

resource "aws_security_group" "allow_ssh" {
  name        = "allow port 22"
  description = "Allow ssh inbound traffic"
  ingress {
    description = "ssh from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["122.187.212.114/32"]
  }
  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
