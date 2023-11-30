# provider "aws" {
  #   region = "ap-south-1"
  # }
  
  resource "aws_instance" "webserver" {
    ami           = var.ami
    instance_type = var.instance_type
    tags = {
      Name = "webserver",
      map-migrated = "d-server-01w1643zlizp1x"
    }
  # user data 
  
    # user_data = <<-EOF
    #             #!/bin/bash
    #             sudo apt update
    #             sudo apt install nginx -y
    #             systemctl enable nginx
    #             systemctl start nginx
    #             EOF
  
  #local provisioner 
    # provisioner "local-exec" {
    #   on_failure = continue
    #   command = "echo ${aws_instance.webserver.public_ip} > /tmp/ips.txt"
    # }
    # provisioner "local-exec" {
    #   when = destroy
    #   command = "echo Instance ${aws_instance.webserver.public_ip} destroyed > /tmp/instance_state.txt"
    # }
  
      vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  
  }
  
