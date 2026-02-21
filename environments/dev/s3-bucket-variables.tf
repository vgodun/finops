variable "environment" {
  type        = string
}

variable "s3_bucket_name" {
  type        = string
}

variable "s3_acl" {
  type        = string
}

variable "s3_lifecycle_prefix" {
  type        = string
}

variable "s3_lifecycle_expiration_days" {
  type        = number
}

variable "tags" {
  type        = map(string)
}