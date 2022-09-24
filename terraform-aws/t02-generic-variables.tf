# Variáveis de entrada
# região da AWS
variable "aws_region" {
  description = "Região em que os recursos da AWS serão criados"
  type        = string
  default     = "us-east-1"
}
# Variável de ambiente
variable "environment" {
  description = "Variável de ambiente usada como prefixo"
  type        = string
  default     = "dev"
}
# Divisão de negócios
variable "business_divsion" {
  description = "Divisão de Negócios na grande organização a que esta Infraestrutura pertence"
  type        = string
  default     = "sap"
}
