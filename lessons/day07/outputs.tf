output "instance_id" {
  description = "The ID of the EC2 instance created"
  value       = aws_instance.ec2_main[0].id
}
