provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
  id        = "vpc-002922cb09fef1dc9"
}

resource "aws_subnet" "example" {
  vpc_id     = aws_vpc.example.id
  cidr_block = "10.0.1.0/24"
  id        = "subnet-09ce403a92a4d5d81"
}

resource "aws_instance" "example" {
  ami           = "ami-0f346136f3b372267"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.example.id
  key_name      = "test"
  security_groups = ["sg-060e914c9848f41b8"]

  tags = {
    Name = "test"
  }
}
