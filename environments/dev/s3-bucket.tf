module "s3-bucket" {
  source = "../../modules/s3-bucket"

  environment            = var.environment
  bucket_name            = var.s3_bucket_name
  acl                    = var.s3_acl
  lifecycle_prefix        = var.s3_lifecycle_prefix
  lifecycle_expiration_days = var.s3_lifecycle_expiration_days
  common_tags            = var.tags
}