# Launch template Outputs
output "launch_template_id" {
  description = "O ID do modelo de lançamento"
  value       = module.autoscaling.launch_template_id
}

output "launch_template_arn" {
  description = "O ARN do modelo de execução"
  value       = module.autoscaling.launch_template_arn
}

output "launch_template_name" {
  description = "O nome do modelo de lançamento"
  value       = module.autoscaling.launch_template_name
}

# Autoscaling Outpus
output "autoscaling_group_id" {
  description = "O ID do grupo de escalonamento automático"
  value       = module.autoscaling.autoscaling_group_id
}

output "autoscaling_group_name" {
  description = "O nome do grupo de escalonamento automático"
  value       = module.autoscaling.autoscaling_group_name
}

output "autoscaling_group_arn" {
  description = "O ARN para este grupo de AutoScaling"
  value       = module.autoscaling.autoscaling_group_arn
}

output "autoscaling_group_min_size" {
  description = "O tamanho mínimo do grupo de dimensionamento automático"
  value       = module.autoscaling.autoscaling_group_min_size
}

output "autoscaling_group_max_size" {
  description = "O tamanho máximo do grupo de dimensionamento automático"
  value       = module.autoscaling.autoscaling_group_max_size
}

output "autoscaling_group_desired_capacity" {
  description = "O número de instâncias do Amazon EC2 que devem estar em execução no grupo"
  value       = module.autoscaling.autoscaling_group_desired_capacity
}

output "autoscaling_group_default_cooldown" {
  description = "Tempo entre uma atividade de dimensionamento e a atividade de dimensionamento seguinte"
  value       = module.autoscaling.autoscaling_group_default_cooldown
}

output "autoscaling_group_health_check_grace_period" {
  description = "Tempo após a instância entrar em serviço antes de verificar a integridade"
  value       = module.autoscaling.autoscaling_group_health_check_grace_period
}

output "autoscaling_group_health_check_type" {
  description = "EC2 ou ELB. Controla como a verificação de integridade é feita"
  value       = module.autoscaling.autoscaling_group_health_check_type
}

output "autoscaling_group_availability_zones" {
  description = "As zonas de disponibilidade do grupo de dimensionamento automático"
  value       = module.autoscaling.autoscaling_group_availability_zones
}

output "autoscaling_group_vpc_zone_identifier" {
  description = "O identificador de zona VPC"
  value       = module.autoscaling.autoscaling_group_vpc_zone_identifier
}

output "autoscaling_group_load_balancers" {
  description = "Os nomes do balanceador de carga associados ao grupo de escalonamento automático"
  value       = module.autoscaling.autoscaling_group_load_balancers
}

output "autoscaling_group_target_group_arns" {
  description = "Lista de ARNs de grupos de destino que se aplicam a este grupo de AutoScaling"
  value       = module.autoscaling.autoscaling_group_target_group_arns
}
