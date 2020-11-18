terraform {
  required_version = "~> v0.13.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.15.0"
    }
  }
}
