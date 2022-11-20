provider "aws" {
    region = "ap-south-1"
}

resource "aws_s3_bucket" "fruit" {
    bucket = "fruits-20222009"
    tags = {
      "Description" = "it store fruit related info"
    }
}
resource "aws_s3_bucket_object" "object-name" {
    bucket = aws_s3_bucket.fruit.id
    source = "/home/aniket/terraform/S3/terraform.tfstate"
    key = "state-file"
}

# resource "aws_s3_bucket_policy" "statefile-policy" {
#     bucket = aws_s3_bucket.fruit.id
#     policy = <<EOF
#         {
#             "Action": "*",
#             "Effect": "Allow",
#             "Resource": "arn:aws:s3:::${aws_s3_bucket.fruit.id}/*",
#             "Principal": {
#                 "AWS":[
#                     "admin"
#                 ]
#             }

#         }
#     EOF
# }