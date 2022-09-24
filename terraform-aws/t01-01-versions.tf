# Bloco Terraform
terraform {
  required_version = "~> 1.3.0" # o que significa qualquer versão igual e acima de 0,14 como 0,15, 0,16 etc e < 1,xx  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.3"
    }
  }
}

# Bloqueio de Provedor
provider "aws" {
  region = var.aws_region
  # profile = "default"
}
/*
Nota-1: AWS Credentials Profile (profile = "default") configurado em seu terminal de desktop local
$HOME/.aws/credentials
*/

# Criar Recurso Pet Resource
resource "random_pet" "this" {
  length = 2
}
