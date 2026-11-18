


locals {
  bucket_name = "terraform-bucket-${var.env}"
}

resource "aws_s3_bucket" "example" {
  bucket = "variable-tutorial-daysdf05"

  tags = {
    Name        = "My bucket"
    Environment = var.env
  }
}


output "s3_arn" {
  value = aws_s3_bucket.example.arn
}
