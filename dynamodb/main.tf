
provider "aws" {
  region = "ap-south-1"
}

resource "aws_dynamodb_table" "cars" {
  name           = "cars"
  hash_key       = "VIN"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "VIN"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "car_item" {
  table_name = aws_dynamodb_table.cars.name
  hash_key = aws_dynamodb_table.cars.hash_key
  item = <<EOF
    {
        "Manufacturer" : {"S": "TATA"},
        "Year" : {"N":"2020"},
        "VIN": {"S":"wertyukytrdsscv"}
    }
    EOF
}