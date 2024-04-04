resource "aws_security_group" "openredalert_sg" {
  name_prefix = "${var.ressource_name_tag}ServerSG"
  vpc_id      = aws_vpc.openredalert_vpc.id

  ingress {
    from_port   = 1234
    to_port     = 1234
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.ressource_name_tag}ServerSG"
  }
}
