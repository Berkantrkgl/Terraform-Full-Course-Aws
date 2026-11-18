terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}


provider "aws" {
  profile = "terraform-tutorial"
  region = "us-east-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "test-bucket-123kljlfdkssdf"
}


