output "app_private_ips" {
  description = "IPs privadas de las instancias de la aplicacion (nginx + node)"
  value       = module.compute.app_private_ips
}

output "mongodb_private_ip" {
  description = "IP privada de la instancia de MongoDB"
  value       = module.compute.mongodb_private_ip
}

output "alb_dns" {
  description = "Nombre DNS del balanceador de carga de la aplicacion"
  value       = module.loadbalancer.alb_dns
}

output "nat_public_ip" {
  description = "IP publica del NAT Gateway"
  value       = module.nat.nat_public_ip
}