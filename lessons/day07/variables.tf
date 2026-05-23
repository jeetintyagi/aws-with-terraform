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

variable "isntance_count" {
  description = "resource instance count"
  type        = number
  default     = 1
}

variable "monitoring_enabled" {
  description = "monitoring enabled or not"
  type        = bool
  default     = true
}

variable "associate_public_ip_address" {
  description = " Associate public IP address or not"
  type        = bool
  default     = true
}

variable "cidr_block" {
  description = "ipv4 cidr block string"
  type        = list(string)
  default     = ["10.0.0.0/16", "192.168.0.0/16", "172.16.0.0/16"]
}

variable "tags" {
  description = "tags for the instance"
  type        = map(string)
  default = {
    "name" = "ec2-instance-main"
    "env"  = "terraform"
  }
}


variable "ingress_values" {
  type    = tuple([number, string, number])
  default = [22, "tcp", 22]
}
