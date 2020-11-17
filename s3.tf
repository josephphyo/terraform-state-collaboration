resource "aws_s3_bucket" "my_bucket" {
  bucket = var.vpc.name
}

resource "aws_s3_access_point" "my_bucket_vpc" {
  bucket = var.vpc.name
  name = "my_bucket_vpc"

  vpc_configuration {
    vpc_id = aws_vpc.vpc_cidr.id
  }
}

resource "aws_vpc" "vpc_cidr" {
  cidr_block = var.vpc.cidr
}

