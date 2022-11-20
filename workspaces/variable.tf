variable "ami" {
  type = map(string)
  default = {
    "projectA" = "ami-09d3b3274b6c5d4aa",
    "projectB" = "ami-08c40ec9ead489470"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "region" {
  default = "ap-south-1"
}