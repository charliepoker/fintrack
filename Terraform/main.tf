# FinTrack Infrastructure as Code
# Main configuration file

locals {
  common_tags = merge(
    {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
      Owner       = var.owner
      CreatedAt   = timestamp()
      UpdatedAt   = timestamp()
    },
    var.tags
  )
  num_azs = length(var.availability_zones)
}

#------- VPC -------#
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  instance_tenancy     = "default"

  tags = {
    Name = "${var.project_name}-${var.environment}-vpc"
  }
}
