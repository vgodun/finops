module "s3-website" {
  source = "../../modules/s3-website"
  version = "~> 3.4"

  environment                  = var.environment
  bucket_name                  = var.s3_website_bucket_name
  acl                          = var.s3_website_acl
  lifecycle_rule_prefix        = var.s3_website_lifecycle_rule_prefix
  lifecycle_rule_noncurrent_version_transition_days = var.s3_website_lifecycle_rule_noncurrent_version_transition_days
  lifecycle_rule_noncurrent_version_transition_storage_class = var.s3_website_lifecycle_rule_noncurrent_version_transition_storage_class
  lifecycle_rule_noncurrent_version_expiration_days = var.s3_website_lifecycle_rule_noncurrent_version_expiration_days
  common_tags                  = var.tags
}