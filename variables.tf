variable "aws_region" {
  description = "AWS region to deploy the infrastructure"
  type = string
  default = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "CIDR blocks for public subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "CIDR blocks for private subnets"
  type = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "app_instance_count" {
  description = "Number of application instances"
  type = number
  default = 2
}

variable "app_instance_type" {
  description = "Instance type for application servers"
  type = string
  default = "t2.micro"
}

variable "mongodb_instance_type" {
  description = "Instance type for MongoDB server"
  type = string
  default = "t2.micro"
}

variable "app_ami" {
  description = "AMI ID for application instances"
  type = string
}

variable "mongodb_ami" {
  description = "AMI ID for MongoDB instance"
  type = string
}