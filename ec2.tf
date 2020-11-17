resource "aws_instance" "webserver" {
<<<<<<< HEAD
  instance_type          = var.instance_type
  ami                    = var.image_id
  key_name               = var.key_name
  subnet_id		 = var.public
=======
  instance_type = var.instance_type
  ami           = var.image_id
  key_name      = var.key_name
>>>>>>> b47e17867722400ad6a524895c475377a38cc93a

  tags = {
    Name = "TF_Server_Ubuntu"
  }
}
