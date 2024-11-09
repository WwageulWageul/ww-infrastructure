
variable "vpc_id" {
  type        = string
  description = "The ID of the VPC"
}

variable "common_tags" {
  type        = map(string)
  description = "Common tags to apply to all resources"
}

variable "env" {
  type        = string
  description = "Environment name (e.g., dev, stag, prod)"
}
