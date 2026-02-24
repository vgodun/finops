module "s3-website" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3.4"

  bucket = "${var.environment}-${var.bucket_name}"
  acl    = var.acl

  versioning = {
    enabled = true
  }

  lifecycle_rule = [
    {
      id     = "rule"
      enabled = true
      prefix = var.lifecycle_rule_prefix
      tags   = var.common_tags

      noncurrent_version_transition = [
        {
          days          = var.lifecycle_rule_noncurrent_version_transition_days
          storage_class = var.lifecycle_rule_noncurrent_version_transition_storage_class
        }
      ]

      noncurrent_version_expiration = {
        days = var.lifecycle_rule_noncurrent_version_expiration_days
      }
    }
  ]

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
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