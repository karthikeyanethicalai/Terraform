provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "test" {
  ami           = "ami-0f346136f3b372267"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0c74489da56983c03"
  vpc_security_group_ids = ["sg-060e914c9848f41b8"]
  key_name      = "New-Server"
  tags = {
    Name = "test"
  }
}

output "public_ip" {
  value = aws_instance.test.public_ip
}
