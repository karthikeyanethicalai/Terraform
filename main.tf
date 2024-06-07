provider "aws" {
  region = "ap-south-1" # Change to your desired region
}

# Create an EC2 Instance in Subnet ap-south-1a
resource "aws_instance" "example_a" {
  ami           = "ami-0c55b159cbfafe1f0" # Change to your desired AMI
  instance_type = "t2.micro"
  
  subnet_id              = "subnet-0c74489da56983c03" # Subnet in ap-south-1a
  security_group_ids     = ["sg-0a40b4e411e819ec1", "sg-060e914c9848f41b8"] # List of security groups
  key_name               = "Pipeline" # Change to your key pair name

  tags = {
    Name = "ExampleInstanceA"
  }
}

# Create an EC2 Instance in Subnet ap-south-1c
resource "aws_instance" "example_c" {
  ami           = "ami-0c55b159cbfafe1f0" # Change to your desired AMI
  instance_type = "t2.micro"
  
  subnet_id              = "subnet-0d8c3f22474129496" # Subnet in ap-south-1c
  security_group_ids     = ["sg-0a40b4e411e819ec1", "sg-060e914c9848f41b8"] # List of security groups
  key_name               = "Pipeline" # Change to your key pair name

  tags = {
    Name = "ExampleInstanceC"
  }
}
