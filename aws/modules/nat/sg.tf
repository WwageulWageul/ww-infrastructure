
resource "aws_security_group" "nat_sg" {
  name        = "${var.env}-nat-sg"
  description = "Security group for NAT instances"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow inbound traffic from private subnets"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.private_subnet_cidr_blocks
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.common_tags, {
    Name = "${var.env}-nat-sg"
  })
}
