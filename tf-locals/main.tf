# main.tf

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}


provider "aws" {
  region = var.region
  profile = var.aws_profile
  shared_credentials_files = [
    "~/.aws/credentials"
  ]
}

resource "aws_vpc" "tf_exam_prep_vpc" {

    cidr_block = "192.168.1.0/24"
    tags = {
        Name = "tf-exam-prep-vpc "
    }
}

resource "aws_subnet" "tf_exam_prep_subnet" {
    vpc_id     = aws_vpc.tf_exam_prep_vpc.id
    cidr_block = "192.168.1.0/25"
    tags = {
        Name = "${local.resource_prefix}-tf-exam-prep-subnet"
    }
}

resource "aws_instance" "example_instance" {
    ami             = "ami-00f19babdd7a36581" # Replace with your desired AMI ID
    instance_type   = "t2.micro"    # Replace with your desired instance type
    subnet_id       = aws_subnet.tf_exam_prep_subnet.id

    tags = merge(
        local.common_tags,
        {
            Name = "${local.resource_prefix}-tf-exam-prep-instance"
        }
    )
}