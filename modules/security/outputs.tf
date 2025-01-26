output "alb_security_group_id" {
  description = "ID del grupo de seguridad del ALB"
  value       = aws_security_group.alb.id
}

output "app_security_group_id" {
  description = "ID del grupo de seguridad de la aplicacion (nginx + node)"
  value       = aws_security_group.app.id
}

output "mongodb_security_group_id" {
  description = "ID del grupo de seguridad de MongoDB"
  value       = aws_security_group.mongodb.id
}