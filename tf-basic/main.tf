################################################################################
# Configure AWS Provider
################################################################################

provider "aws" {
  shared_credentials_files = var.aws-credentials-file
  region                   = var.aws-region
  profile                  = var.aws-profile
}

################################################################################
# Configure Data
# This configuration will find AMI by this specifications:
# 
################################################################################
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

################################################################################
# Configure Resources
################################################################################

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Terraform = true
    Project   = "Terraform-Training"
  }
}

