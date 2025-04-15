resource "aws_vpc" "rithvik_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "rithvik-vpc"
  }
}

resource "aws_subnet" "rithvik_subnet" {
  vpc_id            = aws_vpc.rithvik_vpc.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = "rithvik-subnet"
  }
}
