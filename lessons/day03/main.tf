terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

# Create a S3 bucket
resource "aws_s3_bucket" "tf_test_baivab_bucket" {
  bucket = "jeetintyagi-s3-tf-statefile"

  tags = {
    Name        = "jeetintyagi-s3-tf-statefile"
    Environment = "terraform statefile"
  }
}
