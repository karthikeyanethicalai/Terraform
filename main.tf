provider "aws" {
  region = "ap-south-1" # Change to your desired region
}

# Create an EC2 Instance in Subnet ap-south-1a
resource "aws_instance" "example_a" {
  ami           = "ami-0f346136f3b372267" # Change to your desired AMI
  instance_type = "t2.micro"
  
  subnet_id              = "subnet-0d8c3f22474129496" # Subnet in ap-south-1a
  security_group_ids     = ["sg-0a40b4e411e819ec1"] # List of security groups
  key_name               = "Pipeline" # Change to your key pair name

  tags = {
    Name = "ExampleInstanceA"
  }
}
