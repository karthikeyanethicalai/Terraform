provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = "vpc-002922cb09fef1dc9"
  cidr_block = "10.0.0.0/24"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0f346136f3b372267"
  instance_type = "t2.micro"
  subnet_id     = "subnet-09ce403a92a4d5d81"
  key_name      = "test"
  vpc_security_group_ids = ["sg-060e914c9848f41b8"]
  tags = {
    Name = "test"
  }
}
