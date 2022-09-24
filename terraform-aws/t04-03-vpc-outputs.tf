# Valores de saída da VPC

# ID da VPC
output "vpc_id" {
  description = "O ID da VPC"
  value       = module.vpc.vpc_id
}

# blocos CIDR de VPC
output "vpc_cidr_block" {
  description = "O bloco CIDR da VPC"
  value       = module.vpc.vpc_cidr_block
}

# sub-redes privadas de VPC
output "private_subnets" {
  description = "Lista de IDs de sub-redes privadas"
  value       = module.vpc.private_subnets
}

# VPC sub-redes públicas
output "public_subnets" {
  description = "Lista de IDs de sub-redes públicas"
  value       = module.vpc.public_subnets
}

# IP público do gateway NAT VPC
output "nat_public_ips" {
  description = "Lista de IPs elásticos públicos criados para o AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC AZs
output "azs" {
  description = "Lista de IPs elásticos públicos criados para o AWS NAT Gateway"
  value       = module.vpc.azs
}
