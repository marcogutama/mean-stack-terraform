variable "aws_region" {
  description = "Region de AWS para implementar la infraestructura"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "Bloque CIDR para la VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Lista de bloques CIDR para subredes publicas"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "Lista de bloques CIDR para subredes privadas"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "app_instance_count" {
  description = "Numero de instancias de aplicacion (nginx + node)"
  type        = number
  default     = 2
}

variable "app_instance_type" {
  description = "Tipo de instancia para servidores de aplicacion (nginx + node)"
  type        = string
  default     = "t2.micro"
}

variable "mongodb_instance_type" {
  description = "Tipo de instancia para servidor de MongoDB"
  type        = string
  default     = "t2.micro"
}

variable "app_ami" {
  description = "ID de AMI para instancias de aplicacion (nginx + node)"
  type        = string
}

variable "mongodb_ami" {
  description = "ID de AMI para instancia de MongoDB"
  type        = string
}