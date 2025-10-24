output "policy_id" {
  description = "ID of the backup policy"
  value       = alicloud_hbr_policy.this.id
}

output "policy_name" {
  description = "Name of the backup policy"
  value       = alicloud_hbr_policy.this.policy_name
}

output "rules" {
  description = "Policy rules configuration"
  value       = var.rules
}