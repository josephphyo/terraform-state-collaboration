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

variable "instance_type" {
  default     = "t3.micro"
  type        = string
  description = "AWS Instance Size"
}

variable "image_id" {
  default     = "ami-093da183b859d5a4b"
  type        = string
  description = "AMI for Ubuntu 18.04"
}

variable "key_name" {
  default     = "k8smm"
  type        = string
  description = "SSH Pub Key"
}

variable "s3" {
  name = string
  env = string
}
