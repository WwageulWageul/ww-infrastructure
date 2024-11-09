variable "project_id" {
  description = "value of the project id"
  type        = string
  default     = "affable-curve-440700-e1"
}

variable "gcp_region" {
  description = "The GCP region"
  type        = string
  default     = "asia-northeast3"
}

variable "env" {
  description = "value of the environment"
  type        = string
  default     = "dev"
}
