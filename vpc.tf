module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"

  name = var.vpc.name
  cidr = var.vpc.cidr

  azs             = var.vpc.azs
  private_subnets = var.vpc.private
  public_subnets  = var.vpc.public

  #Tagging Override
  public_route_table_tags     = var.vpc.pub_rt_tags
  private_route_table_tags    = var.vpc.pri_rt_tags
  igw_tags                    = var.vpc.igw_tags
  nat_gateway_tags            = var.vpc.natgw_tags
  public_subnet_tags          = var.vpc.pubsub_tags
  private_subnet_tags         = var.vpc.prisub_tags
  default_security_group_tags = var.vpc.default_sg_tags
  default_security_group_name = var.vpc.default_sg_name

  #Default Network ACL can be manage or not
  manage_default_network_acl = true

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
    Environment = var.vpc.env
    Owner       = var.vpc.owner
    Team        = var.vpc.team
  }
}
