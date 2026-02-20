variable "environment" { type = string }
variable "tags" { type = map(string); default = {} }
variable "s3_lifecycle_bucket_name" {
  type        = string
  description = "S3 lifecycle bucket name suffix"
}
variable "s3_lifecycle_expiration_days" {
  type        = number
  description = "Days before objects expire"
}