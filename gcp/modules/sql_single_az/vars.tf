variable "name_prefix" {
  description = "value of the name prefix"
  type        = string
  nullable    = false
}

variable "region" {
  description = "value of the region"
  type        = string
  // taiwan, free tier region
  #   default = "asia-east1"
  default = "us-central1"
}

variable "db_name" {
  description = "value of the db name"
  type        = string
  nullable    = false
}
variable "db_username" {
  description = "value of the db username"
  type        = string
  nullable    = false
}

variable "db_password" {
  description = "value of the db password"
  type        = string
  nullable    = false
}

variable "db_tier" {
  description = "value of the db tier"
  type        = string
  default     = "db-f1-micro"
  # default = "db-g1-small"
  # default = "db-n1-standard-1"
}

variable "db_disk_type" {
  description = "value of the db disk type"
  type        = string
  default     = "PD_HDD"
}

variable "db_disk_size" {
  description = "value of the db disk size"
  type        = number
  default     = 10

}
