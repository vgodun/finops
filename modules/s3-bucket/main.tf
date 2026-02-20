module "s3-bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3.4"

  bucket = "${var.environment}-${var.bucket_name}"
  acl    = "private"

  versioning = {
    enabled = true
  }

  lifecycle_rules = [
    {
      id     = "rule"
      enabled = true
      prefix = ""
      tags   = var.common_tags

      transitions = [
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

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true

  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = var.common_tags
}