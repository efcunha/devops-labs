# Variáveis do Terraform da instância AWS EC2
# Variáveis de instância EC2

# Tipo de instância AWS EC2
variable "instance_type" {
  description = "Tipo de instância EC2"
  type        = string
  default     = "t3.micro"
}

# Par de chaves de instância AWS EC2
variable "instance_keypair" {
  description = "Par de chaves AWS EC2 que precisa ser associado às instância EC2"
  type        = string
  default     = "terraform-key"
}

# Contagem de instâncias privadas do AWS EC2
variable "private_instance_count" {
  description = "Contagem de instâncias privadas do AWS EC2"
  type        = number
  default     = 1
}
