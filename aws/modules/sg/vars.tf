variable "env" {
  description = "value of the environment"
  type        = string
  default     = "dev"
}

variable "common_tags" {
  description = "value of the common tags"
  type        = map(string)
  nullable    = false
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  nullable    = false
}
