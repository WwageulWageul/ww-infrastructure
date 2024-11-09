
output "nat_security_group_id" {
  description = "The ID of the NAT Security Group"
  value       = aws_security_group.nat_sg.id
}
