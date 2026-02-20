variable "environment" { type = string }
variable "common_tags" { type = map(string); default = {} }
variable "bucket_name" { type = string; default = null }
variable "region" { type = string; default = "us-west-2" }
variable "account_id" { type = string; default = "123456789012" }
variable "s3_bucket_versioning" { type = bool; default = true }
variable "s3_bucket_server_side_encryption" { type = bool; default = true }
variable "s3_bucket_block_public_access" { type = bool; default = true }
variable "s3_bucket_lifecycle_enabled" { type = bool; default = true }
variable "s3_bucket_lifecycle_expiration_days" { type = number; default = 190 }
variable "s3_bucket_lifecycle_transition_days" { type = number; default = 30 }
variable "s3_bucket_lifecycle_transition_storage_class" { type = string; default = "STANDARD_IA" }
variable "s3_bucket_lifecycle_glacier_transition_days" { type = number; default = 60 }
variable "s3_bucket_lifecycle_glacier_transition_storage_class" { type = string; default = "GLACIER" }