provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source          = "./modules/vpc"
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "security" {
  source = "./modules/security"
  vpc_id = module.vpc.vpc_id
}

module "loadbalancer" {
  source            = "./modules/loadbalancer"
  vpc_id            = module.vpc.vpc_id
  public_subnets    = module.vpc.public_subnet_ids
  security_group_id = module.security.alb_security_group_id
  app_instances     = module.compute.app_instance_ids
}

module "compute" {
  source                    = "./modules/compute"
  vpc_id                    = module.vpc.vpc_id
  public_subnet_ids         = module.vpc.public_subnet_ids
  private_subnet_ids        = module.vpc.private_subnet_ids
  app_security_group_id     = module.security.app_security_group_id
  mongodb_security_group_id = module.security.mongodb_security_group_id
  app_instance_count        = var.app_instance_count
  app_instance_type         = var.app_instance_type
  mongodb_instance_type     = var.mongodb_instance_type
  app_ami                   = var.app_ami
  mongodb_ami               = var.mongodb_ami
}

module "nat" {
  source             = "./modules/nat"
  vpc_id             = module.vpc.vpc_id
  public_subnet_id   = module.vpc.public_subnet_ids[0]
  private_subnet_ids = module.vpc.private_subnet_ids
}