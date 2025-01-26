output "vpc_id" {
  description = "ID de la VPC creada"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs de subredes publicas"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs de subredes privadas"
  value       = aws_subnet.private[*].id
}

output "public_subnet_cidrs" {
  description = "Bloques CIDR de subredes públicas"
  value       = aws_subnet.public[*].cidr_block
}