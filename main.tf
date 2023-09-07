module "cloudwatch_alarm" {
  source              = "./modules"
  account_id          = var.account_id
  region              = var.region
  alarm_name          = var.alarm_name
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
  threshold           = var.threshold
  period              = var.period
  namespace           = var.namespace
  metric_name         = var.metric_name
  statistic           = var.statistic
  sns_name            = var.sns_name
  service_name        = var.service_name
  service_type        = var.service_type

}

