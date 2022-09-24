# Módulo Terraform do AWS EC2 Security Group
# Grupo de segurança para instâncias privadas do EC2
module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  name        = "private-sg"
  description = "Grupo de segurança com porta HTTP e SSH aberta para todo o bloco VPC (IPv4 CIDR), as portas de saída são abertas para o mundo"
  vpc_id      = module.vpc.vpc_id
  # Regras de entrada e blocos CIDR
  ingress_rules       = ["ssh-tcp", "http-80-tcp", "http-8080-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  # Regra de saída - tudo aberto
  egress_rules = ["all-all"]
  tags         = local.common_tags
}
