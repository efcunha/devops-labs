# Saídas do Terraform da instância AWS EC2
# Instâncias EC2 públicas - Bastion Host

## ec2_bastion_public_instance_ids
output "ec2_bastion_public_instance_ids" {
  description = "Lista de IDs de instâncias"
  value       = module.ec2_public.id
}

## ec2_bastion_public_ip
output "ec2_bastion_public_ip" {
  description = "Lista de endereços IP públicos atribuídos às instâncias"
  value       = module.ec2_public.public_ip
}
