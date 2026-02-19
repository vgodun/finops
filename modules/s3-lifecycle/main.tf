module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.bucket_name
  acl    = "private"

  versioning = {
    enabled = true
  }

  lifecycle_rules = [
    {
      id     = "rule-1"
      enabled = true
      prefix = ""

      noncurrent_version_expiration_days = 190
      noncurrent_version_transition = [
        {
          days          = 30
          storage_class = "STANDARD_IA"
        },
        {
          days          = 60
          storage_class = "GLACIER"
        }
      ]

      expiration = {
        days = 190
      }
    }
  ]

  tags = var.common_tags
}