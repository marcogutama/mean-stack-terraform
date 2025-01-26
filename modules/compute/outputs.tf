output "app_instance_ids" {
  description = "IDs de instancias de aplicación"
  value       = aws_instance.app[*].id
}

output "app_public_ips" {
  description = "IPs públicas de instancias de aplicacion (nginx + node)"
  value       = aws_instance.app[*].public_ip
}

output "app_private_ips" {
  description = "IPs privadas de instancias de aplicacion (nginx + node)"
  value       = aws_instance.app[*].private_ip
}

output "mongodb_instance_id" {
  description = "ID de instancia de MongoDB"
  value       = aws_instance.mongodb.id
}

output "mongodb_private_ip" {
  description = "IP privada de instancia de MongoDB"
  value       = aws_instance.mongodb.private_ip
}