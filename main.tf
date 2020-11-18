#### AWS VPC module ####
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"

  name = var.vpc.name
  cidr = var.vpc.cidr

  azs             = var.vpc.azs
  private_subnets = var.vpc.private
  public_subnets  = var.vpc.public

  #VPC DNS Support
  enable_dns_hostnames = true
  enable_dns_support   = true

  #Single NAT Gateway
  enable_nat_gateway     = var.vpc.enable_nat
  single_nat_gateway     = true
  one_nat_gateway_per_az = false

  # VPC endpoint for S3
  enable_s3_endpoint = var.vpc.enable_s3ep

  tags = {
    Name        = var.vpc.name
    Environment = var.vpc.env
    Owner       = var.vpc.owner
    Team        = var.vpc.team
  }
}

#### EC2 instance Webserver #####
resource "aws_instance" "webserver" {
  instance_type = var.ec2.instance_type
  ami           = var.ec2.image_id
  key_name      = var.ec2.key_name
  subnet_id     = module.vpc.public_subnets[0]

  tags = {
    Name = var.ec2.name
  }
}

#### S3 Bucket ####
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.s3.name

  tags = {
    Name        = var.s3.name
    Environment = var.s3.env
  }
}