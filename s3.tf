resource "aws_s3_bucket" "my_bucket" {
  bucket = var.s3.name

  tags = {
    Name        = var.s3.name
    Environment = var.s3.env
  }
}
