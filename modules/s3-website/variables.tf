variable "environment" {
  type        = string
}

variable "bucket_name" {
  type        = string
}

variable "acl" {
  type        = string
}

variable "lifecycle_rule_prefix" {
  type        = string
}

variable "lifecycle_rule_noncurrent_version_transition_days" {
  type        = number
}

variable "lifecycle_rule_noncurrent_version_transition_storage_class" {
  type        = string
}

variable "lifecycle_rule_noncurrent_version_expiration_days" {
  type        = number
}

variable "common_tags" {
  type        = map(string)
  default     = {}
}