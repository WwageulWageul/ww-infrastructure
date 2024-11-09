output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.db.id
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public.id
}

output "fake_subnet_id" {
  description = "The ID of the fake subnet"
  value       = aws_subnet.fake.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.default.id
}

output "public_route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public.id
}

output "public_route_table_association_id" {
  description = "The ID of the public route table association"
  value       = aws_route_table_association.public_assoc.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.db.cidr_block
}

output "public_subnet_cidr_block" {
  description = "The CIDR block of the public subnet"
  value       = aws_subnet.public.cidr_block
}

output "fake_subnet_cidr_block" {
  description = "The CIDR block of the fake subnet"
  value       = aws_subnet.fake.cidr_block
}

output "internet_gateway_attached" {
  description = "Boolean indicating if the Internet Gateway is attached to the VPC"
  value       = aws_internet_gateway.default.vpc_id != null
}
