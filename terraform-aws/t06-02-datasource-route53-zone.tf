# Obtenha informações de DNS do AWS Route53
data "aws_route53_zone" "mydomain" {
  name = "edson-devops.eti.br"
}

# Saída do ID da zona do meu domínio
output "mydomain_zoneid" {
  description = "O ID da zona hospedada desejada"
  value       = data.aws_route53_zone.mydomain.zone_id
}

# Saída do nome do meu domínio
output "mydomain_name" {
  description = "O nome da zona hospedada desejada"
  value       = data.aws_route53_zone.mydomain.name
}
