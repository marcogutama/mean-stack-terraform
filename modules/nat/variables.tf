variable "vpc_id" {
  description = "ID de la VPC"
  type        = string
}

variable "public_subnet_id" {
  description = "ID de la subred pública para NAT Gateway"
  type        = string
}

variable "private_subnet_ids" {
  description = "Lista de IDs de subredes privadas"
  type        = list(string)
}