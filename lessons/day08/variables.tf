variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  description = "The environment name for resource naming and tagging"
  type        = string
  default     = "day08-env"
}

variable "bucket_names" {
  description = "A list of unique S3 bucket prefixes to create using count"
  type        = list(string)
  default     = ["my-day08-bucket-a", "my-day08-bucket-b", "my-day08-bucket-c"]
}

variable "bucket_name_set" {
  description = "A set of unique S3 bucket names to be created using for_each"
  type        = set(string)
  default     = ["my-day08-bucket-x", "my-day08-bucket-y", "my-day08-bucket-z"]
}

variable "tags" {
  type = map(string)
  default = {
    Name        = "jeetintyagi-bucket"
    Environment = "day08-env"
    ManagedBy   = "Terraform"
  }
}

variable "iam_users" {
  description = "A map of IAM users to create using for_each, containing their roles and departments"
  type = map(object({
    role       = string
    department = string
  }))
  default = {
    "alice-day08" = {
      role       = "Cloud-Engineer"
      department = "DevOps"
    }
    "bob-day08" = {
      role       = "SecOps-Analyst"
      department = "Security"
    }
    "charlie-day08" = {
      role       = "Data-Scientist"
      department = "Analytics"
    }
  }
}
