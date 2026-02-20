variable "environment" { type = string }
variable "common_tags" { type = map(string); default = {} }
variable "bucket_name" { type = string; default = null }