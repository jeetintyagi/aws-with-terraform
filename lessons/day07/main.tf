
resource "aws_instance" "ec2_main" {
  count                       = var.isntance_count
  ami                         = "ami-09ed39e30153c3bf9" # Amazon Linux 2023 AMI in ap-south-1
  instance_type               = "t3.micro"
  region                      = var.region
  monitoring                  = var.monitoring_enabled
  associate_public_ip_address = var.associate_public_ip_address

  tags = {
    Environment = var.environment
    Name        = "${var.environment}-instance"
  }
}


resource "aws_security_group" "ec2_security_group" {
  name        = "allow_ssh"
  description = "Allow SSH access to the instance"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_block
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_block
  }
}
