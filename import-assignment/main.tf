provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my-webserver" {
#   ami = "ami-026b57f3c383c2eec"
#   instance_type = "t2.micro"
# tags = {
#   Name = "web-server"
# } 
}



# terraform import <resource_type>.<resource_name> <id>