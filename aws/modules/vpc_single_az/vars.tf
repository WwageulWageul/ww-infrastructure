variable "env" {
  description = "value of the environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "fake_subnet_cidr_block" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.2.0/24"
}


variable "az" {
  description = "The availability zone for the RDS instance"
  type        = string
  default     = "ap-northeast-2a"
}

variable "fake_az" {
  description = "The availability zone for Fake subnet"
  type        = string
  default     = "ap-northeast-2c"
}

variable "common_tags" {
  description = "value of the common tags"
  type        = map(string)
  nullable    = false
}
