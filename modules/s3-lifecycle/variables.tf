variable "environment" { type = string }
variable "common_tags" { type = map(string); default = {} }
variable "bucket_name" { type = string; description = "Bucket name suffix" }
variable "lifecycle_expiration_days" { type = number; description = "Days before objects expire" }