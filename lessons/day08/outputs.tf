
output "bucket_names_and_arns" {
  description = "A list of strings combining the S3 bucket names and their ARNs using a for loop"
  value       = [for bucket in aws_s3_bucket.bucket_set : "${bucket.bucket} -> ${bucket.arn}"]
}


output "iam_user_arns" {
  description = "A map of created IAM user names to their respective ARNs using a for loop"
  value       = { for username, user in aws_iam_user.iam_users : username => user.arn }
}


output "ec2_instance_arn" {
  description = "The ARN of the EC2 instance"
  value       = aws_instance.ec2_main.arn
}
