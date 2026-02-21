module "s3-bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3.4"

  bucket = "${var.environment}-${var.bucket_name}"
  acl    = var.acl

  versioning = {
    enabled = true
  }

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }

  lifecycle_rule = [
    {
      enabled = true
      prefix  = var.lifecycle_prefix
      tags     = var.common_tags

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
        days = var.lifecycle_expiration_days
      }
    }
  ]

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true

  tags = var.common_tags
}