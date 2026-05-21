terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

variable "environment" {
  description = "This is for the Environment name"
  type        = string
  default     = "terraform"
}

variable "region" {
  description = "This is for the Region name"
  type        = string
  default     = "ap-south-1"
}

provider "aws" {
  region = var.region
}

# Resource names must be static identifiers (e.g., "main")
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Environment = var.environment
    Name        = "${var.environment}-vpc" # This is where your dynamic naming lives!
  }
}

resource "aws_instance" "ec2_main" {
  ami           = "ami-09ed39e30153c3bf9"
  instance_type = "t3.micro"
  # 'region' argument removed as it's not valid inside aws_instance
  tags = {
    Environment = var.environment
    Name        = "${var.environment}-instance"
  }
}

# Outputs updated to reference the static resource identifiers
output "vpc_id" {
  value = aws_vpc.main.id
}

output "instance_id" {
  value = aws_instance.ec2_main.id
}



