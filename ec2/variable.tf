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

