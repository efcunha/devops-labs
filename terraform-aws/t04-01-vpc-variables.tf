# Variáveis de entrada VPC

# Nome da VPC
variable "vpc_name" {
  description = "Nome VPC"
  type        = string
  default     = "myvpc"
}

# Bloco CIDR VPC
variable "vpc_cidr_block" {
  description = "Bloco CIDR VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Zonas de disponibilidade de VPC# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "Zona de Disponibilidade da VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# VPC sub-redes públicas
variable "vpc_public_subnets" {
  description = "Sub-redes públicas de VPC"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

# sub-redes privadas de VPC
variable "vpc_private_subnets" {
  description = "Sub-redes privadas de VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Sub-redes do banco de dados VPC
variable "vpc_database_subnets" {
  description = "Sub-redes do banco de dados de VPC"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Criar grupo de sub-rede de banco de dados (verdadeiro/falso)
variable "vpc_create_database_subnet_group" {
  description = "VPC Criar grupo de sub-rede de banco de dados"
  type        = bool
  default     = true
}

# VPC Criar tabela de rota de sub-rede de banco de dados (verdadeiro ou falso)
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Criar tabela de rotas de sub-rede de banco de dados"
  type        = bool
  default     = true
}

# VPC Enable NAT Gateway (True ou False)
variable "vpc_enable_nat_gateway" {
  description = "Habilitar gateways NAT para comunicação de saída de sub-redes privadas"
  type        = bool
  default     = true
}

# Gateway NAT único VPC (verdadeiro ou falso)
variable "vpc_single_nat_gateway" {
  description = "Habilite apenas um único gateway NAT em uma zona de disponibilidade para economizar custos durante nossas demonstrações"
  type        = bool
  default     = true
}
