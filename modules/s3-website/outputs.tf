output "arn" {
  value       = module.s3-website.s3_bucket_arn
  description = "The ARN of the S3 bucket"
}

output "id" {
  value       = module.s3-website.s3_bucket_id
  description = "The ID of the S3 bucket"
}