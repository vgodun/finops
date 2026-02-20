module "s3_bucket" {
  source        = "terraform-aws-modules/s3-bucket/aws"
  version       = "~> 4.0"
  bucket        = var.bucket_name
  acl           = "private"
  force_destroy = true
  attach_lifecycle_policy = true
  lifecycle_rules = [
    {
      id     = "rule"
      enabled = true
      prefix = ""
      tags   = var.common_tags
      expiration = {
        days = 190
      }
    }
  ]
  tags = var.common_tags
}