# Saídas do Terraform do AWS EC2 Security Group

# Saídas do Grupo de Segurança do Host Bastion Público
## public_bastion_sg_group_id
output "public_bastion_sg_group_id" {
  description = "O ID do grupo de segurança"
  value       = module.public_bastion_sg.security_group_id
}

## public_bastion_sg_group_vpc_id
output "public_bastion_sg_group_vpc_id" {
  description = "O código da VPC"
  value       = module.public_bastion_sg.security_group_vpc_id
}

## public_bastion_sg_group_name
output "public_bastion_sg_group_name" {
  description = "O nome do grupo de segurança"
  value       = module.public_bastion_sg.security_group_name
}

# Saídas privadas do grupo de segurança de instâncias EC2
## private_sg_group_id
output "private_sg_group_id" {
  description = "O ID do grupo de segurança"
  value       = module.private_sg.security_group_id
}

## private_sg_group_vpc_id
output "private_sg_group_vpc_id" {
  description = "O código da VPC"
  value       = module.private_sg.security_group_vpc_id
}

## private_sg_group_name
output "private_sg_group_name" {
  description = "O nome do grupo de segurança"
  value       = module.private_sg.security_group_name
}
