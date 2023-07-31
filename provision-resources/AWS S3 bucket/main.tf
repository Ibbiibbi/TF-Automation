provider "aws" {
  region = "us-east-1" # Change this to your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-bucket" # Change this to a unique bucket name
  acl    = "private"
}
