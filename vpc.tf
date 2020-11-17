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
