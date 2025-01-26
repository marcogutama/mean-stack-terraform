output "alb_arn" {
  description = "ARN del Balanceador de Carga de Aplicaciones"
  value       = aws_lb.app.arn
}

output "alb_dns" {
  description = "Nombre DNS del Balanceador de Carga de Aplicaciones"
  value       = aws_lb.app.dns_name
}

output "target_group_arn" {
  description = "ARN del grupo de destino"
  value       = aws_lb_target_group.app.arn
}