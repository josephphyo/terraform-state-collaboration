variable "aws" {
  type = object({
    access_key = string
    secret_key = string
    region     = string
  })
  description = "The AWS credential"
}

variable "vpc" {
  type = object({
    public_subnets          = list(string)
    private_subnets         = list(string)
    database_subnets        = list(string)
    vpc_id                  = string
    cache_subnet_group_name = string
    env                     = string
    owner                   = string
    project                 = string
    team                    = string
  })
  description = "ALL IN ONE VPC VARIABLES"
}

variable "ec2" {
  type = object({
    name_api           = string
    name_admin         = string
    api_eip_alloc_id   = string
    admin_eip_alloc_id = string
    ami_id             = string
    is_monitor         = bool
    ins_type           = string
    ins_count          = number
    keyname            = string
    ebs_optimize       = bool
    iam_profile        = string
    volume_tags        = map(string)
    ssh_sg             = string

  })
  description = "ALL IN ONE EC2 VARIABLES"
}
