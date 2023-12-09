variable "aws-credentials-file" {
  description = "Specify the credentials file path"
  type        = list(any)
  default     = ["~/.aws/credentials"]
}

variable "aws-region" {
  description = "Specify the AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "aws-profile" {
  description = "Specify the AWS profile"
  type        = string
  default     = "default"
}