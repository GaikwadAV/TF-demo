provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "first-ec2" {
  ami           = ""
  instance_type = ""
  key_name 		= "ec2"
  tags = {
    Name = "web"
  }
  
  connection {
      type     = "ssh"
      user     = "ec2-user"
      private_key = file("path")
      #host = aws_instance.web.public_ip
      host = self.public_ip
  }
    provisioner "local-exec" {
    command = "touch filename"
  }
  provisioner "remote-exec" {
    inline = [
	  "sudo apt-get update",
      "sudo apt-get install nginx -y",
	  "sudo systemctl start nginx",
    ]
  }
   provisioner "file" {
    source      = "terraform.tfstate.backup"
    destination = "/tmp/"
  } 
}