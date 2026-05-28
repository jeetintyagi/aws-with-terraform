
resource "aws_s3_bucket" "bucket_list" {
  count         = length(var.bucket_names)
  bucket        = "jeetintyagi-${var.bucket_names[count.index]}-${var.environment}"
  force_destroy = true

  tags = var.tags
}

resource "aws_s3_bucket" "bucket_set" {
  for_each      = var.bucket_name_set
  bucket        = "jeetintyagi-${each.value}-${var.environment}"
  force_destroy = true

  tags = var.tags
}

resource "aws_iam_user" "iam_users" {
  for_each = var.iam_users
  name     = each.key

  tags = {
    Role        = each.value.role
    Department  = each.value.department
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "aws_instance" "ec2_main" {
  ami           = "ami-09ed39e30153c3bf9" # Amazon Linux 2023 AMI in ap-south-1
  instance_type = "t3.micro"

  tags = {
    Name        = "${var.environment}-instance"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }

  # Explicit dependency: The EC2 instance will wait until all S3 buckets are fully created
  depends_on = [
    aws_s3_bucket.bucket_set
  ]
}
