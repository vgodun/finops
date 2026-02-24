variable "environment" {
  type = string
}

variable "s3_website_bucket_name" {
  type = string
}

variable "s3_website_acl" {
  type = string
}

variable "s3_website_lifecycle_rule_prefix" {
  type = string
}

variable "s3_website_lifecycle_rule_noncurrent_version_transition_days" {
  type = number
}

variable "s3_website_lifecycle_rule_noncurrent_version_transition_storage_class" {
  type = string
}

variable "s3_website_lifecycle_rule_noncurrent_version_expiration_days" {
  type = number
}

variable "tags" {
  type = map(string)
}