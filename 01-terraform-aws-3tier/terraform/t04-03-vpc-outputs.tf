# VPC Output Values

# VPC ID
output "vpc_id" {
  description = "O ID da VPC"
  value       = module.vpc.vpc_id
}

# VPC CIDR blocks
output "vpc_cidr_block" {
  description = "O bloco CIDR da VPC"
  value       = module.vpc.vpc_cidr_block
}

# VPC Private Subnets
output "private_subnets" {
  description = "Lista de IDs de sub-redes privadas"
  value       = module.vpc.private_subnets
}

# VPC Public Subnets
output "public_subnets" {
  description = "Lista de IDs de sub-redes públicas"
  value       = module.vpc.public_subnets
}

# VPC NAT gateway Public IP
output "nat_public_ips" {
  description = "Lista de IPs elásticos públicos criados para o AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC AZs
output "azs" {
  description = "Lista de IPs elásticos públicos criados para o AWS NAT Gateway"
  value       = module.vpc.azs
}
