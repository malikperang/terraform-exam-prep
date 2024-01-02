# vars.tf

variable "aws_profile" {
    description = "The AWS Profile"
    default = "farizizwan"
}

variable "region" {
  description = "AWS region where EC2 instance will be provisioned"
  default     = "ap-southeast-1"
}

variable "environment" {
  description = "Environment for the EC2 instance"
  default     = "development"
}

variable "owner" {
  description = "Owner of the EC2 instance"
  default     = "Fariz Izwan"
}

# Add more variables as needed...
