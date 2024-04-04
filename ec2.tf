
resource "aws_instance" "openredalert_instance" {
  ami           = data.aws_ami.ubuntu-linux-2204.id
  instance_type = var.instance_type

  associate_public_ip_address = true
  subnet_id                   = aws_subnet.openredalert_subnet.id
  vpc_security_group_ids      = [aws_security_group.openredalert_sg.id]
  user_data                   = data.template_file.openra_user_data.rendered

  tags = {
    Name = "${var.ressource_name_tag}-Server"
  }
}

output "open_ra_pub_ip" {
  value = aws_instance.openredalert_instance.public_ip
}
