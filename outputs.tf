output "iam_group_policy_attachments_exclusives_group_name" {
  description = "Map of group_name values across all iam_group_policy_attachments_exclusives, keyed the same as var.iam_group_policy_attachments_exclusives"
  value       = { for k, v in aws_iam_group_policy_attachments_exclusive.iam_group_policy_attachments_exclusives : k => v.group_name if v.group_name != null && length(v.group_name) > 0 }
}
output "iam_group_policy_attachments_exclusives_policy_arns" {
  description = "Map of policy_arns values across all iam_group_policy_attachments_exclusives, keyed the same as var.iam_group_policy_attachments_exclusives"
  value       = { for k, v in aws_iam_group_policy_attachments_exclusive.iam_group_policy_attachments_exclusives : k => v.policy_arns if v.policy_arns != null && length(v.policy_arns) > 0 }
}

