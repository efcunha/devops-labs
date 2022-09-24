# AWS IAM Service Linked Role for Autoscaling Group
resource "aws_iam_service_linked_role" "autoscaling" {
  aws_service_name = "autoscaling.amazonaws.com"
  description      = "Uma função vinculada ao serviço para escalonamento automático"
  custom_suffix    = local.name

  # Às vezes, é necessário um bom temp para que alguns recursos do IAM sejam criados antes que possam ser usados
  provisioner "local-exec" {
    command = "sleep 10"
  }
}

# Saída da função vinculada ao serviço do AWS IAM
output "service_linked_role_arn" {
  value = aws_iam_service_linked_role.autoscaling.arn
}