terraform {
  backend "s3" {
    bucket = "terraform-state-1794571935"
    key    = "day5"
    region = "eu-central-1"
  }
}
