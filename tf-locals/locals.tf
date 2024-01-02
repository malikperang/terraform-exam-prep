# locals.tf

locals {
  region_map = {
    "us-east-1" = "usea1"
    "us-west-2" = "uswe2"
    "eu-west-1" = "euwe1"
    "ap-southeast-1" = "apse1"
    # Add more regions as needed
  }

  region = local.region_map[var.region]

  resource_prefix = "${local.region}.${var.environment}"

  common_tags = {
    Environment = var.environment
    Owner       = var.owner
    # Add more common tags as needed
  }
}
