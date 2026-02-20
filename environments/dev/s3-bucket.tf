# Create S3 bucket with lifecycle policy
module "s3_bucket" {
  source = "../../modules/s3-lifecycle"
  environment = var.environment
  common_tags  = var.tags
}