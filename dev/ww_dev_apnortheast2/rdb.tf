
# ----------------------------------------------------------------------------------------------------------------
# RDS only for dev environment
# ----------------------------------------------------------------------------------------------------------------
resource "aws_db_instance" "db" {
  identifier             = "${var.env}-db"
  instance_class         = var.db_instance_class
  allocated_storage      = 10
  db_name                = var.db_name
  password               = var.db_password
  username               = var.db_username
  vpc_security_group_ids = [aws_security_group.default.id]
  db_subnet_group_name   = aws_db_subnet_group.db.name
  publicly_accessible    = true

  engine         = "mysql"
  engine_version = "8.0"

  availability_zone   = var.az
  deletion_protection = true

  skip_final_snapshot = true
}



resource "aws_db_subnet_group" "db" {
  name       = "${var.env}-db-subnet-group"
  subnet_ids = [aws_subnet.public.id, aws_subnet.fake.id]

  tags = merge(local.common_tags, {
    Name = "${var.env}-db-subnet-group"
  })
}
