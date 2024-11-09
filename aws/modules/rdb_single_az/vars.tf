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

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "x"
}
variable "db_username" {
  description = "The username for the database"
  type        = string
  default     = "x"
}

variable "db_password" {
  description = "value of the password"
  type        = string
  default     = "12345678"
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
  default     = "db.t3.micro"
}


variable "az" {
  description = "The availability zone for the RDS instance"
  type        = string
  default     = "ap-northeast-2a"
}

variable "vpc_security_group_ids" {
  description = "The security group ids for the RDS instance"
  type        = list(string)
  default     = []
}

variable "db_subnet_ids" {
  description = "The subnet ids for the RDS instance"
  type        = list(string)
  default     = []
}
