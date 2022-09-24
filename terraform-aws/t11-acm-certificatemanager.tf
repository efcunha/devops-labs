# Módulo ACM - Para criar e verificar certificados SSL
module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "3.4.1"

  domain_name = trimsuffix(data.aws_route53_zone.mydomain.name, ".")
  zone_id     = data.aws_route53_zone.mydomain.zone_id

  subject_alternative_names = [
    "*.edson-devops.eti.br" # change this!
  ]
  tags = local.common_tags
}

# Saída ARN do certificado ACM
output "this_acm_certificate_arn" {
  description = "O ARN do certificado"
  value       = module.acm.acm_certificate_arn
}
