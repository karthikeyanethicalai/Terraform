```terraform
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "test" {
  ami           = "ami-0f346136f3b372267"
  instance_type = "t2.micro"
  key_name      = "test"
  subnet_id     = "subnet-09ce403a92a4d5d81"
  vpc_security_group_ids = ["<your_security_group_id>"]

  tags = {
    Name = "test"
  }
}
```