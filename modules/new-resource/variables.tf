variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
}
variable "tags" {
  type        = map(string)
  default     = {
    Name        = "S3 Bucket"
    Environment = "dev"
  }
}
variable "region" {
  type        = string
  default     = "eu-central-1"
}