resource "aws_vpc" "openredalert_vpc" {
  cidr_block = var.cidr-vpc

  tags = {
    Name = "${var.ressource_name_tag}VPC"
  }
}

