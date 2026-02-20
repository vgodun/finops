module "s3_bucket" {
  source        = "terraform-aws-modules/s3-bucket/aws"
  version       = "~> 4.0"
  bucket        = var.bucket_name
  acl           = "private"
  force_destroy = true
  attach_lifecycle_configuration = true
  lifecycle_configuration = {
    rule = [
      {
        id     = var.environment
        enabled = true
        expiration = {
          days = 190
        }
        transition = [
          {
            days          = 30
            storage_class = "STANDARD_IA"
          },
          {
            days          = 60
            storage_class = "GLACIER"
          }
        ]
      }
    ]
  }
  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }
  block_public_access = {
    block_public_acls   = true
    block_public_policy = true
    ignore_public_acls  = true
    restrict_public_buckets = true
  }
  versioning = {
    enabled = true
  }
  tags = var.common_tags
}