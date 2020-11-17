resource "aws_instance" "webserver" {
  instance_type          = var.instance_type
  ami                    = var.image_id
  key_name               = var.key_name
  subnet_id		 = var.public
  instance_type 	= var.instance_type
  ami           	= var.image_id
  key_name      	= var.key_name

  tags = {
    Name = "TF_Server_Ubuntu"
  }
}
