variable "account_id" {
  description = "AWS Account ID"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
  default     = "eu-central-1"
}

variable "alarm_name" {
  description = "The descriptive name for the alarm. This name must be unique within the user's AWS account."
  type        = string
}

variable "comparison_operator" {
  description = "The arithmetic operation to use when comparing the specified Statistic and Threshold."
  type        = string
}

variable "evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold."
  type        = number
}

variable "threshold" {
  description = "The value against which the specified statistic is compared."
  type        = number
  default     = null
}

variable "period" {
  description = "The period in seconds over which the specified statistic is applied."
  type        = string
  default     = null
}

variable "namespace" {
  description = "The namespace for the alarm's associated metric."
  type        = string
  default     = null
}

variable "metric_name" {
  description = "The name for the alarm's associated metric."
  type        = list(string)
  default     = null
}


variable "statistic" {
  description = "The statistic to apply to the alarm's associated metric."
  type        = string
  default     = null
}

variable "sns_name" {
  description = "The name of the SNS topic to create"
  type        = string
  default     = null
}

variable "service_type" {
  type    = string
  default = "DBInstanceIdentifier"
}

variable "service_name" {
  type = string
}

