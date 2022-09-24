# Define CloudWatch Alarms for ALB

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm

# Alert if HTTP 4xx errors are more than threshold value
resource "aws_cloudwatch_metric_alarm" "alb_4xx_errors" {
  alarm_name          = "App1-ALB-HTTP-4xx-errors"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "2" # "2"
  evaluation_periods  = "3" # "3"
  metric_name         = "HTTPCode_Target_4XX_Count"
  namespace           = "AWS/ApplicationELB"
  period              = "120"
  statistic           = "Sum"
  threshold           = "5" # Update real-world value like 100, 200 etc
  treat_missing_data  = "missing"
  dimensions = {
    LoadBalancer = module.alb.lb_arn_suffix
  }
  alarm_description = "Esta métrica monitora os erros do ALB HTTP 4xx e se estiverem acima de 100 no intervalo especificado, enviará um email de notificação"
  ok_actions        = [aws_sns_topic.myasg_sns_topic.arn]
  alarm_actions     = [aws_sns_topic.myasg_sns_topic.arn]
}

# Por Métricas AppELB
## - HTTPCode_ELB_5XX_Count
## - HTTPCode_ELB_502_Count
## - TargetResponseTime
# Por AppELB, por TG Metrics
## - UnHealthyHostCount
## - HealthyHostCount
## - HTTPCode_Target_4XX_Count
## - TargetResponseTime
