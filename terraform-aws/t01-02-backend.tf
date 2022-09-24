terraform {
  # Adicionando back-end como S3 para armazenamento de estado remoto
  backend "s3" {
    bucket = "devops-efcunha-infra-test"
    key    = "dev/devops-01/terraform.tfstate"
    region = "us-east-1"

    # Para bloqueio de estado
    dynamodb_table = "dev-devops-01"
  }
}
