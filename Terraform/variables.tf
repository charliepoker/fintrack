variable "aws_region" {
  description = "The AWS region where the resources will be created"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance. Ensure it's valid for your region."
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type."
  type        = string
  default     = "t2.micro"
}

variable "project_name" {
  description = "The name of the project to be used in resource naming and tagging."
  type        = string
  default     = "fintrack"
}

variable "environment" {
  description = "The environment for the resources (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "Obinna"
}

variable "vpc_cidr_block" {
  description = "value for the VPC CIDR block for the FinTrack project."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet in the FinTrack project."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]

}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets in the FinTrack project."
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "Availability zones for subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway for private subnets"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default     = {}
}
