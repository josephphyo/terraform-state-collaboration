resource "aws_s3_bucket" "my_bucket" {
  bucket = var.name
  acl    = var.is_public ? "public" : "private"

  tags = {
    Name        = var.tag_name
    Environment = var.tag_env
  }
}

