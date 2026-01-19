resource "aws_cloudwatch_log_subscription_filter" "this" {
  count = var.create ? 1 : 0

  name                      = var.name
  apply_on_transformed_logs = var.apply_on_transformed_logs
  destination_arn           = var.destination_arn
  emit_system_fields        = var.emit_system_fields
  filter_pattern            = var.filter_pattern
  log_group_name            = var.log_group_name
  role_arn                  = var.role_arn
  distribution              = var.distribution
}
