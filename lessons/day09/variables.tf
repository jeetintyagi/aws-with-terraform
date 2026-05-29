
variable "allowed_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "The environment name for resource naming and tagging"
  type        = string
  default     = "terraform"
}

variable "allowed_instance_type" {
  description = "The type of instance to create"
  type        = list(string)
  default     = ["t3.micro", "t2.micro", "t3.small"]
}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
  default     = "ami-09ed39e30153c3bf9"
}
