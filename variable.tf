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
    name        = string
    cidr        = string
    azs         = list(string)
    public      = list(string)
    private     = list(string)
    env         = string
    owner       = string
    project     = string
    team        = string
    enable_nat  = bool
    enable_s3ep = bool
  })
  description = "ALL IN ONE VPC VARIABLES"
}

variable "ec2" {
  type = object({
    instance_type = string
    image_id      = string
    key_name      = string
    name          = string
  })
  description = "ALL IN ONE EC2 VARIABLE"
}

variable "s3" {
  type = object({
    name = string
    env  = string
  })
  description = "ALL IN ONE S# VARIABLE"
}
