provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0f346136f3b372267"
  instance_type = "t2.micro"
  subnet_id     = "subnet-09ce403a92a4d5d81"
  vpc_security_group_ids = ["sg-060e914c9848f41b8"]
  key_name      = "test"
  tags = {
    Name = "test"
  }
  
  vpc = "vpc-002922cb09fef1dc9"
}
