module "s3_lifecycle" {
  source      = "../../modules/s3-lifecycle"
  environment = var.environment
  common_tags = var.common_tags
  bucket_name = "data-lifecycle"
}