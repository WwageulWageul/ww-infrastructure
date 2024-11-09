resource "aws_vpc" "db" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true

  tags = merge(var.common_tags, {
    Name = "${var.env}-vpc"
  })
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.db.id

  cidr_block        = var.subnet_cidr_block
  availability_zone = var.az

  tags = merge(var.common_tags, {
    Name = "${var.env}-subnet-public"
  })
}

resource "aws_subnet" "fake" {
  vpc_id = aws_vpc.db.id

  cidr_block        = var.fake_subnet_cidr_block
  availability_zone = var.fake_az

  tags = merge(var.common_tags, {
    Name = "${var.env}-subnet-fake"
  })
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.db.id

  tags = merge(var.common_tags, {
    Name = "${var.env}-igw"
  })
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.db.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }
  tags = merge(var.common_tags, {
    Name = "${var.env}-rt-public"
  })
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
