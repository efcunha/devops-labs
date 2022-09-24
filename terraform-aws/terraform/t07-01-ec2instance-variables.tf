# AWS EC2 Instance Terraform Variables
# EC2 Instance Variables

# AWS EC2 Instance Type
variable "instance_type" {
  description = "Tipo de instância EC2"
  type        = string
  default     = "t3.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "Par de chaves AWS EC2 que precisa ser associado às instância EC2"
  type        = string
  default     = "terraform-key"
}

# AWS EC2 Private Instance Count
variable "private_instance_count" {
  description = "Contagem de instâncias privadas do AWS EC2"
  type        = number
  default     = 1
}
