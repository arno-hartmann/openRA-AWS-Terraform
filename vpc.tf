resource "aws_vpc" "openredalert_vpc" {
  cidr_block = var.cidr-vpc

  tags = {
    Name = "${var.ressource_name_tag}VPC"
  }
}

resource "aws_subnet" "openredalert_subnet" {
  vpc_id            = aws_vpc.openredalert_vpc.id
  cidr_block        = var.cidr-subnet
  availability_zone = "eu-central-1a"

  tags = {
    Name = "${var.ressource_name_tag}Subnet"
  }
}

resource "aws_internet_gateway" "openredalert_igw" {
  vpc_id = aws_vpc.openredalert_vpc.id

  tags = {
    Name = "${var.ressource_name_tag}IGW"
  }
}

