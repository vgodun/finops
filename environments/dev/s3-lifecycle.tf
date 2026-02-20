module "s3_lifecycle" {
  source                   = "../../modules/s3-lifecycle"
  environment              = var.environment
  common_tags              = var.tags
  bucket_name              = var.s3_lifecycle_bucket_name
  lifecycle_expiration_days = var.s3_lifecycle_expiration_days
}