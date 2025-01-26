variable "vpc_id" {
  description = "ID de la VPC"
  type        = string
}

variable "public_subnet_ids" {
  description = "Lista de IDs de subredes públicas"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "Lista de IDs de subredes privadas"
  type        = list(string)
}

variable "app_security_group_id" {
  description = "ID del grupo de seguridad para instancias de aplicacion (nginx + node)"
  type        = string
}

variable "mongodb_security_group_id" {
  description = "ID del grupo de seguridad para instancia de MongoDB"
  type        = string
}

variable "app_instance_count" {
  description = "Numero de instancias de aplicacion (nginx + node)"
  type        = number
  default     = 2
}

variable "app_instance_type" {
  description = "Tipo de instancia para servidores de aplicacion (nginx + node)"
  type        = string
}

variable "mongodb_instance_type" {
  description = "Tipo de instancia para servidor de MongoDB"
  type        = string
}

variable "app_ami" {
  description = "ID de AMI para instancias de aplicacion (nginx + node)"
  type        = string
}

variable "mongodb_ami" {
  description = "ID de AMI para instancia de MongoDB"
  type        = string
}