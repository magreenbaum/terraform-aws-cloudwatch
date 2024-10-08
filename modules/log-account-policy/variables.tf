variable "create" {
  description = "Whether to create the cloudwatch log data protection policy."
  type        = bool
  default     = true
}

variable "create_log_data_protection_policy" {
  description = "Whether to create the cloudwatch log data protection policy."
  type        = bool
  default     = false
}

variable "log_account_policy_name" {
  description = "The name of the log group under which the log stream is to be created."
  type        = string
  default     = null
}

variable "log_account_policy_scope" {
  description = "Currently defaults to and only accepts the value: ALL."
  type        = string
  default     = null
}

variable "log_account_policy_type" {
  description = "Type of account policy. Either DATA_PROTECTION_POLICY or SUBSCRIPTION_FILTER_POLICY. You can have one account policy per type in an account."
  type        = string
  default     = "audit-policy"
}

variable "log_account_policy_selection_criteria" {
  description = "Criteria for applying a subscription filter policy to a selection of log groups. The only allowable criteria selector is LogGroupName NOT IN []."
  type        = string
  default     = null
}

variable "policy_document" {
  description = "Specifies the data protection policy in JSON."
  type        = string
  default     = null
}

variable "log_data_protection_policy_name" {
  description = "The name of the data protection policy document."
  type        = string
  default     = null
}

variable "log_data_protection_description" {
  description = "The description of the data protection policy document."
  type        = string
  default     = null
}

variable "audit_statement_sid" {
  description = "Name of the audit statement."
  type        = string
  default     = "audit-policy"
}

variable "deidentify_statement_sid" {
  description = "Name of the deidentify statement."
  type        = string
  default     = "redact-policy"
}

variable "data_identifiers" {
  description = "Set of at least 1 sensitive data identifiers that you want to mask."
  type        = list(string)
  default     = null
}

variable "findings_destination_cloudwatch_log_group" {
  description = "Configures CloudWatch Logs as a findings destination."
  type        = string
  default     = null
}

variable "findings_destination_firehose_delivery_stream" {
  description = "Configures Kinesis Firehose as a findings destination."
  type        = string
  default     = null
}

variable "findings_destination_s3_bucket" {
  description = "Configures S3 as a findings destination."
  type        = string
  default     = null
}
