# Saídas do AWS Application Load Balancer (ALB) do Terraform
output "lb_id" {
  description = "O ID e o ARN do balanceador de carga que criamos."
  value       = module.alb.lb_id
}

output "lb_arn" {
  description = "O ID e o ARN do balanceador de carga que criamos."
  value       = module.alb.lb_arn
}

output "lb_dns_name" {
  description = "O nome DNS do balanceador de carga."
  value       = module.alb.lb_dns_name
}

output "lb_arn_suffix" {
  description = "Sufixo ARN do nosso balanceador de carga - pode ser usado com o CloudWatch."
  value       = module.alb.lb_arn_suffix
}

output "lb_zone_id" {
  description = "O zone_id do balanceador de carga para auxiliar na criação de registros DNS."
  value       = module.alb.lb_zone_id
}

output "http_tcp_listener_arns" {
  description = "O ARN dos listeners do balanceador de carga TCP e HTTP criados."
  value       = module.alb.http_tcp_listener_arns
}

output "http_tcp_listener_ids" {
  description = "Os IDs dos listeners do balanceador de carga TCP e HTTP criados."
  value       = module.alb.http_tcp_listener_ids
}

output "https_listener_arns" {
  description = "The ARNs of the HTTPS load balancer listeners created."
  value       = module.alb.https_listener_arns
}

output "https_listener_ids" {
  description = "Os ARNs dos listeners do balanceador de carga HTTPS criados."
  value       = module.alb.https_listener_ids
}

output "target_group_arns" {
  description = "ARNs of the target groups. Useful for passing to your Auto Scaling group."
  value       = module.alb.target_group_arns
}

output "target_group_arn_suffixes" {
  description = "ARNs dos grupos de destino. Útil para passar para seu grupo de Auto Scaling."
  value       = module.alb.target_group_arn_suffixes
}

output "target_group_names" {
  description = "Nome do grupo de destino. Útil para passar para seu grupo de implantação do CodeDeploy."
  value       = module.alb.target_group_names
}

output "target_group_attachments" {
  description = "ARNs dos IDs de anexo do grupo de destino."
  value       = module.alb.target_group_attachments
}
