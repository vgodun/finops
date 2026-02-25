output "arn" {
  value       = module.s3_bucket.this_s3_bucket_arn
}

output "id" {
  value       = module.s3_bucket.this_s3_bucket_id
}

output "domain_name" {
  value       = module.s3_bucket.this_s3_bucket_domain_name
}