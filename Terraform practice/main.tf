terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.60.0"
    }
  }
  backend "s3" {
    bucket = "jirivasm-test-bucket"
    key = "terraform .tfstatefile"
    region = "us-east-2"
  }
}
provider "aws"{
    region = "us-east-2"
}
resource "aws_s3_bucket" "jirivasm-test-bucket"{
    bucket = "jirivasm-test-bucket"
    
}
resource "aws_s3_bucket_versioning" "test-bucket-versioning" {
  bucket =  aws_s3_bucket.jirivasm-test-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}