terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}
resource "aws_iam_user" "my_iam_users" {
  count = 2
  name  = "my_aim_user_${count.index}"
}