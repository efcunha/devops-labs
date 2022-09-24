# Grupo de segurança para balanceador de carga público
module "loadbalancer_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  name        = "loadbalancer-sg"
  description = "Grupo de segurança com HTTP aberto para toda a Internet (IPv4 CIDR), as portas de saída são todas abertas para o mundo"
  vpc_id      = module.vpc.vpc_id
  # Regras de entrada e blocos CIDR
  ingress_rules       = ["http-80-tcp", "https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Regra de saída - tudo aberto
  egress_rules = ["all-all"]
  tags         = local.common_tags

  # Aberto a blocos CIDRs (rule or from_port+to_port+protocol+description)
  ingress_with_cidr_blocks = [
    {
      from_port   = 81
      to_port     = 81
      protocol    = 6
      description = "Permitir a porta 81 da internet"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}
