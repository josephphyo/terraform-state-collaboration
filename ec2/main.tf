resource "aws_security_group" "port_22" {
  name = "port_22_ingress_globally_accessible"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "webserver" {
  instance_type          = var.instance_type
  ami                    = var.image_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.port_22.id]

  tags = {
    Name = "TF_Server_Ubuntu"
  }
}
