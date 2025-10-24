resource "alicloud_hbr_policy" "this" {
  policy_name = var.policy_name
  policy_type = var.policy_type
  dynamic "rules" {
    for_each = var.rules
    content {
      rule_type    = rules.value.rule_type
      backup_type  = rules.value.backup_type
      schedule     = rules.value.schedule
      retention    = rules.value.retention
      archive_days = rules.value.archive_days
    }
  }
}