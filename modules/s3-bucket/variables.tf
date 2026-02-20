variable "environment" {
  type        = string
}

variable "bucket_name" {
  type        = string
}

variable "lifecycle_expiration_days" {
  type        = number
}

variable "common_tags" {
  type        = map(string)
  default     = {}
}