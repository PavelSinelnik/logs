resource "aws_cloudwatch_metric_alarm" "this" {
  count               = length(var.metric_name)
  alarm_name          = "${var.alarm_name}-${count.index}"
  alarm_actions       = [aws_sns_topic.my_first_sns_topic.arn]
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods
  threshold           = var.threshold
  metric_name         = var.metric_name[count.index]
  namespace           = var.namespace
  period              = var.period
  statistic           = var.statistic

  dimensions = {
    (var.service_type) = var.service_name
  }
}
