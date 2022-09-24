# Notificações de escalonamento automático
## Bug da AWS para tópico SNS: https://stackoverflow.com/questions/62694223/cloudwatch-alarm-pending-confirmation
## Devido a isso, crie um tópico SNS com nome exclusivo

## SNS - Tópico
resource "aws_sns_topic" "myasg_sns_topic" {
  name = "myasg-sns-topic-${random_pet.this.id}"
}

## SNS - Assinatura
resource "aws_sns_topic_subscription" "myasg_sns_topic_subscription" {
  topic_arn = aws_sns_topic.myasg_sns_topic.arn
  protocol  = "email"
  endpoint  = "efcunha@edsoncunha.eti.br" # change this!
}

## Criar recurso de notificação de escalonamento automático
resource "aws_autoscaling_notification" "myasg_notifications" {
  group_names = [module.autoscaling.autoscaling_group_id]
  notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
  ]
  topic_arn = aws_sns_topic.myasg_sns_topic.arn
}
