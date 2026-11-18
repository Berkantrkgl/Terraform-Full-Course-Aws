terraform {
  backend "s3" {
    bucket = "terraform-state-1794571935"
    key    = "prod/day5.tfstate"
    region = "us-east-1"
  }
}


