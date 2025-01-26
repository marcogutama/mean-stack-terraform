variable "vpc_cidr" {
  description = "Bloque CIDR para la VPC"
  type        = string
}

variable "public_subnets" {
  description = "Lista de bloques CIDR para subredes publicas"
  type        = list(string)
}

variable "private_subnets" {
  description = "Lista de bloques CIDR para subredes privadas"
  type        = list(string)
}