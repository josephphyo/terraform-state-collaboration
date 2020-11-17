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
    env                     = string
    owner                   = string
    project                 = string
    team                    = string
  })
  description = "ALL IN ONE VPC VARIABLES"
}

variable "ec2" = {
  type = object({
    instance_type = string
    image_id = string 
    key_name = string 
  })
  description = "ALL IN ONE EC2 VARIABLE"
}
