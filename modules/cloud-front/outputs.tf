output "arn" {
  value = module.cloud_front.cloudfront_distribution_arn
}

output "id" {
  value = module.cloud_front.cloudfront_distribution_id
}

output "domain_name" {
  value = module.cloud_front.cloudfront_distribution_domain_name
}