terraform {
  backend "s3"{
    bucket = "mybucket-18-10-2022"
    key = "data/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-locking"
  }
}   