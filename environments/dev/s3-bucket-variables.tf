variable "environment" {
  type        = string
}

variable "tags" {
  type        = map(string)
}

variable "s3_bucket_name" {
  type        = string
}

variable "s3_lifecycle_expiration_days" {
  type        = number
}