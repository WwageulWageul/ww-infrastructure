# ----------------------------------------------------------------------------------------------------------------
# Default Security Group
# ----------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "default" {
  vpc_id = aws_vpc.db.id

  name = "${var.env}-sg-default"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.common_tags, {
    Name = "${var.env}-sg-default"
  })
}
