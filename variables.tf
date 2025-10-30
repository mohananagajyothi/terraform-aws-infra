variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "terraform-aws-infra"
}
# Key pair name used to SSH into EC2 (create in AWS console or with CLI)
variable "key_name" {
  type        = string
  description = "Existing EC2 key pair name for SSH"
}

# Minimal instance type override
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
