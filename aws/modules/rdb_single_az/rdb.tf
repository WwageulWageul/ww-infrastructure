
# ----------------------------------------------------------------------------------------------------------------
# RDS only for dev environment
# ----------------------------------------------------------------------------------------------------------------
resource "aws_db_instance" "rdb" {
  identifier             = "${var.env}-rdb"
  instance_class         = var.db_instance_class
  allocated_storage      = 10
  db_name                = var.db_name
  password               = var.db_password
  username               = var.db_username
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = aws_db_subnet_group.rdb.name
  publicly_accessible    = true

  engine         = "mysql"
  engine_version = "8.0"

  availability_zone   = var.az
  deletion_protection = false
  skip_final_snapshot = true
}



resource "aws_db_subnet_group" "rdb" {
  name       = "${var.env}-rdb-subnet-group"
  subnet_ids = var.db_subnet_ids

  tags = merge(var.common_tags, {
    Name = "${var.env}-rdb-subnet-group"
  })
}
