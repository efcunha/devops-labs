# Módulo Terraform do AWS EC2 Security Group
# Grupo de Segurança para Host Bastion Público
module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  name        = "public-bastion-sg"
  description = "Grupo de segurança com porta SSH aberta para todos (IPv4 CIDR), as portas de saída são todas abertas para o mundo"
  vpc_id      = module.vpc.vpc_id
  # Regras de entrada e blocos CIDR
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Regra de saída - tudo aberto
  egress_rules = ["all-all"]
  tags         = local.common_tags
}
