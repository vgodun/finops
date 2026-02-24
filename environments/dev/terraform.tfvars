environment = "dev"

s3_website_bucket_name = "my-bucket"

s3_website_acl = "private"

s3_website_lifecycle_rule_prefix = ""

s3_website_lifecycle_rule_noncurrent_version_transition_days = 30

s3_website_lifecycle_rule_noncurrent_version_transition_storage_class = "STANDARD_IA"

s3_website_lifecycle_rule_noncurrent_version_expiration_days = 90

tags = {
  Environment = "dev"
}

route53_dns_zone_id = "ZONE_ID"
route53_dns_record_name = "RECORD_NAME"
route53_dns_record_type = "RECORD_TYPE"
route53_dns_cloudfront_distribution_domain_name = "CLOUDFRONT_DISTRIBUTION_DOMAIN_NAME"
route53_dns_cloudfront_distribution_zone_id = "CLOUDFRONT_DISTRIBUTION_ZONE_ID"
route53_dns_evaluate_target_health = true