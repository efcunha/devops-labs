# Definir alarmes do CloudWatch para grupos de escalonamento automático

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_policy

# Autoscaling - Política de escalonamento para alta CPU
resource "aws_autoscaling_policy" "high_cpu" {
  name                   = "high-cpu"
  scaling_adjustment     = 2
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = module.autoscaling.autoscaling_group_name
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm

# Cloud Watch Alarm para acionar a política de dimensionamento acima quando a utilização da CPU estiver acima de 80%
# Envie também o e-mail de notificação para os usuários presentes na Assinatura do Tópico do SNS
resource "aws_cloudwatch_metric_alarm" "app1_asg_cwa_cpu" {
  alarm_name          = "App1-ASG-CWA-CPUUtilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "80"

  dimensions = {
    AutoScalingGroupName = module.autoscaling.autoscaling_group_name
  }

  alarm_description = "Esta métrica monitora a utilização da CPU ec2 e aciona a política ASG Scaling para dimensionar se a CPU estiver acima de 80%"

  ok_actions = [aws_sns_topic.myasg_sns_topic.arn]
  alarm_actions = [
    aws_autoscaling_policy.high_cpu.arn,
    aws_sns_topic.myasg_sns_topic.arn
  ]
}
