provider "aws" {
  region     = "${var.region}"
}

resource "aws_instance" "projectA" {
  ami           = lookup(var.ami, terraform.workspace)
  instance_type = var.instance_type
  tags = {
    name = terraform.workspace
  }
}