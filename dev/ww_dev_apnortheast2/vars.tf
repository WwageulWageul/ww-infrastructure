

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

variable "fake_az" {
  description = "The availability zone for Fake subnet"
  type        = string
  default     = "ap-northeast-2c"
}



