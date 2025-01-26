variable "vpc_id" {
  description = "ID de la VPC"
  type        = string
}

variable "public_subnets" {
  description = "Lista de IDs de subredes publicas"
  type        = list(string)
}

variable "security_group_id" {
  description = "ID del grupo de seguridad para el ALB"
  type        = string
}

variable "app_instances" {
  description = "Lista de IDs de instancias de aplicacion (nginx + node)"
  type        = list(string)
}