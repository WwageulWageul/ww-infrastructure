variable "project_name" {
  description = "value of the project name"
  type        = string
  default     = "ww"
}

variable "env" {
  description = "value of the environment"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "The AWS region"
  type        = string
  default     = "ap-northeast-2"
}
