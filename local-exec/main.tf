provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "first-ec2" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  key_name 		= "ec2"
  tags = {
    Name = "web"
  }
  provisioner "local-exec" {
    on_failure = fail
    command = "echo ${aws_instance.first-ec2.public_ip} >> /tdfgmp/ips.txt"
  }
}