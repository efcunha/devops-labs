provider "aws" {
  region = "us-east-1"
}

resource "aws_cloudwatch_metric_alarm" "temp" {
  
}

/* Comando de importação do Terraform
terraform import aws_cloudwatch_metric_alarm.temp temp-alarm
terraform import aws_cloudwatch_metric_alarm.temp Synthetics-Alarm-my-manual-canary-1
*/
