module "s3-bucket" {
  source = "../../modules/s3-bucket"
  version = "~> 0"

  environment            = var.environment
  bucket_name             = var.s3_bucket_name
  lifecycle_expiration_days = var.s3_lifecycle_expiration_days
  common_tags             = var.tags
}