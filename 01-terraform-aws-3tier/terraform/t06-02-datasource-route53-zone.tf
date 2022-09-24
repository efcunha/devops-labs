# Get DNS information from AWS Route53
data "aws_route53_zone" "mydomain" {
  name = "edson-devops.eti.br"
}

# Output MyDomain Zone ID
output "mydomain_zoneid" {
  description = "O ID da zona hospedada desejada"
  value       = data.aws_route53_zone.mydomain.zone_id
}

# Output MyDomain name
output "mydomain_name" {
  description = "O nome da zona hospedada desejada"
  value       = data.aws_route53_zone.mydomain.name
}
