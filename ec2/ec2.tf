resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  key_name ="ALB-keypair"
  associate_public_ip_address=true
  vpc_security_group_ids=[var.sgr_id]
  tags = {
    Name = "netflix-webserver"
  }
}
