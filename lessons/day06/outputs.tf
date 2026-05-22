output "vpc_id" {
  description = "The ID of the VPC created"
  value       = aws_vpc.main.id
}

output "instance_id" {
  description = "The ID of the EC2 instance created"
  value       = aws_instance.ec2_main.id
}
