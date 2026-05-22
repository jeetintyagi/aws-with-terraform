resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Environment = var.environment
    Name        = "${var.environment}-vpc"
  }
}

resource "aws_instance" "ec2_main" {
  ami           = "ami-09ed39e30153c3bf9" # Amazon Linux 2023 AMI in ap-south-1
  instance_type = "t3.micro"
  tags = {
    Environment = var.environment
    Name        = "${var.environment}-instance"
  }
}
