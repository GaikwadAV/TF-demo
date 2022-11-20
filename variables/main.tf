resource "aws_instance" "terraform-instance" {
    ami = var.ami
    instance_type = var.instance_type
}