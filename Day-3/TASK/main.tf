resource "aws_vpc" "shrinidhi_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "Shrinidhi-vpc"
  }
}

resource "aws_subnet" "shrinidhi_subnet" {
  vpc_id            = aws_vpc.shrinidhi_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "Shrinidhi-subnet"
  }
}
