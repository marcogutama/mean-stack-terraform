output "app_public_ips" {
  description = "Public IPs of application instances"
  value = module.compute.app_public_ips
}

output "app_private_ips" {
  description = "Private IPs of application instances"
  value = module.compute.app_private_ips
}

output "mongodb_private_ip" {
  description = "Private IP of MongoDB instance"
  value = module.compute.mongodb_private_ip
}

output "alb_dns" {
  description = "DNS name of the application load balancer"
  value = module.loadbalancer.alb_dns
}

output "nat_public_ip" {
  description = "Public IP of the NAT Gateway"
  value = module.nat.nat_public_ip
}