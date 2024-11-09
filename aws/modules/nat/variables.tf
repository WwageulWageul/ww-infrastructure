
variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
}

variable "private_subnet_cidr_blocks" {
  type        = list(string)
  description = "List of CIDR blocks for private subnets"
}

variable "common_tags" {
  type        = map(string)
  description = "Common tags to apply to all resources"
}

variable "env" {
  type        = string
  description = "Environment name (e.g., dev, stag, prod)"
}
