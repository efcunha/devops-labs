# Criar módulo VPC Terraform
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.0"

  # Detalhes básicos da VPC
  name            = "${local.name}-${var.vpc_name}"
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets

  # Sub-redes de banco de dados
  database_subnets                   = var.vpc_database_subnets
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table

  # NAT Gateways - Comunicação de saída
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  # Parâmetros DNS da VPC
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags     = local.common_tags
  vpc_tags = local.common_tags

  # Tags adicionais para sub-redes
  public_subnet_tags = {
    Type = "Sub-redes públicas"
  }
  private_subnet_tags = {
    Type = "Sub-redes privadas"
  }
  database_subnet_tags = {
    Type = "Sub-redes de banco de dados privado"
  }
}
