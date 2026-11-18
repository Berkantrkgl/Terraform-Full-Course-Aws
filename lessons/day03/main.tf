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

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "my-test-bucket-terraform-12lk3"

  tags = {
    "Name" = "My Bucket"
    "Environment" = "Dev"
  }
}

