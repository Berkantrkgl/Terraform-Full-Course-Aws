terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
  profile = "terraform-tutorial"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-tutorial-berkan-jlksdsdfj"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_object" "example" {
  key = "someobject"
  bucket = aws_s3_bucket.bucket.id
  source = "/home/berkan/dev/devops/terraform/Terraform-Full-Course-Aws/lessons/day02/task.md"
  server_side_encryption = "AES256"
}
