# Módulo do AWS EC2 Instance Terraform
# Bastion Host - Instância do EC2 que será criada na VPC Public Subnet
module "ec2_public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.4.0"
  # insira as 10 variáveis necessárias aqui
  name = "${var.environment}-BastionHost"
  # instance_count         = 5
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  # monitoring             = true
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
  tags                   = local.common_tags
}
