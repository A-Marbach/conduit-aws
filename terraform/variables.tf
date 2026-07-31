variable "aws_region" {
  description = "AWS region for all resources."
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "Project name used for tagging."
  type        = string
  default     = "conduit-aws"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}

variable "availability_zone" {
  description = "AWS Availability Zone"
  type        = string
  default     = "eu-central-1a"
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed for SSH access"
  type        = string
  default     = "0.0.0.0/0"
}