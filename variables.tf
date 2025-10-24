variable "policy_name" {
  description = "Name of the backup policy"
  type        = string
}

variable "policy_type" {
  description = "Type of the backup policy"
  type        = string
}

variable "rules" {
  description = "List of backup policy rules"
  type = list(object({
    rule_type    = string
    backup_type  = string
    schedule     = string
    retention    = string
    archive_days = string
  }))
  
}

variable "policy_description" {
  description = "Description of the policy"
  type        = string
}
