# terraform-state-collaboration

## Requirements

| Name | Version |
|------|---------|
| terraform | ~> v0.13.4 |
| aws | ~> 3.15.0 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.15.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws | The AWS credential | <pre>object({<br>    access_key = string<br>    secret_key = string<br>    region     = string<br>  })</pre> | n/a | yes |
| ec2 | ALL IN ONE EC2 VARIABLE | <pre>object({<br>    instance_type = string<br>    image_id      = string<br>    key_name      = string<br>    name          = string<br>  })</pre> | n/a | yes |
| s3 | ALL IN ONE S# VARIABLE | <pre>object({<br>    name = string<br>    env  = string<br>  })</pre> | n/a | yes |
| vpc | ALL IN ONE VPC VARIABLES | <pre>object({<br>    name        = string<br>    cidr        = string<br>    azs         = list(string)<br>    public      = list(string)<br>    private     = list(string)<br>    env         = string<br>    owner       = string<br>    project     = string<br>    team        = string<br>    enable_nat  = bool<br>    enable_s3ep = bool<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| instance\_public\_dns | Instance Public DNS |
| instance\_public\_ip\_addr | Instance Public IP Address |
