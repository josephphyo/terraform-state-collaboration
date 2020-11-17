resource "aws_instance" "webserver" {
  instance_type = var.ec2.instance_type
  ami           = var.ec2.image_id
  key_name      = var.ec2.key_name
  subnet_id     = module.vpc.public_subnets[0]

  tags = {
    Name = var.ec2.name
  }
}
