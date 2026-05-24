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
