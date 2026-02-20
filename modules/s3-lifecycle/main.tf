module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 4.0"

  bucket = "${var.environment}-${var.bucket_name}"

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

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  lifecycle_rule = [
    {
      id     = "transition-to-ia"
      enabled = true
      transition = {
        days          = 30
        storage_class = "STANDARD_IA"
      }
    },
    {
      id     = "transition-to-glacier"
      enabled = true
      transition = {
        days          = 60
        storage_class = "GLACIER"
      }
    },
    {
      id      = "expire-old-objects"
      enabled = true
      expiration = {
        days = var.lifecycle_expiration_days
      }
      noncurrent_version_expiration = {
        days = var.lifecycle_expiration_days
      }
    }
  ]

  tags = var.common_tags
}