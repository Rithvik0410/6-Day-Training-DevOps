provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  for_each = toset(["Shrinidhi-1", "Shrinidhi-2", "Shrinidhi-3"])

  ami           = "ami-02f624c08a83ca16f"
  instance_type = "t2.micro"
  key_name      = "Nidhi-server"

  tags = {
    Name = each.key
  }
}
